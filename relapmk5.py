import os
import csv
import shlex
import numpy as np
import matplotlib.pyplot as plt
import math
import itertools
import time
import re
import copy
import sys

date = time.strftime('%m/%d/%Y')

#find test.txt
def find(name, path):
	for root, dirs, files in os.walk(path):
		if name in files:
			return os.path.join(root, name)

#used to find which lines are headers
def is_number(s):
	try:
		float(s)
		return True
	except ValueError:
		return False

#Helps me make a dictionary
def dicMaker():
	#list initializations
	idList = []
	nameList = []
	dpList1 = []	#dp means DRACS or Primary
	dpList2 = []
	colorList = []

	#finds file
	while True:
		tfile1 = 'CIET_RELAP_dic.txt'
		try:
			path1 = find(tfile1, '/Users')
			a1 = list(path1)
		except TypeError:
			print 'Dictionary not found'
		else:
			break
	llen1 = len(a1)
	tlen1 = len(tfile1)
	b1 = a1[0:(llen1-tlen1-1)]
	path1 = ''.join(b1)
	os.chdir(path1)
	searchfile1 = open(tfile1, "r")

	#Remove title line
	searchfile1.readline()

	#makes three lists with the compID, name of comp, and Primary / DRACS identification
	#0: temperature 1:mass flow rate 2: primary 3: DRACS 4:power 5:pressure 6: residence time
	#dictionary format: {### (key) : [plain english name, DRACS or Primary, unit of measurement]}
	with searchfile1 as nfile:
		for line in nfile:
			lineList = re.split('[ |\t]+', line.strip())
			idList.append(lineList[0])
			nameList.append(lineList[1])
			dpList1.append(lineList[2])

	for i in range(len(dpList1)):
		if dpList1[i] == 'Primary':
			dpList2.append(2)
		elif dpList1[i] == 'DRACS':
			dpList2.append(3)

	compDic  = { idList[i] : [nameList[i], dpList2[i]] for i in range(len(idList)) }
	return compDic
#END dictionary function


#finds file
while True:
	tfile = raw_input('File name: ')
	try:
		path = find(tfile, '/Users')
		path_list = list(path)
	except TypeError:
		print 'File not found'
	else:
		break
pl_len = len(path_list)
file_len = len(tfile)
path_list = path_list[0:(pl_len-file_len-1)]
path = ''.join(path_list)
os.chdir(path)

#find locations of "1 time"
searchfile = open(tfile, "r")
count=0
locations = []
for line in searchfile:
	count += 1
	if "1 time" in line:
		locations.append(count)

#master lists
lxlist = []
lylist = []
pxlist = []
pylist = []

#for component ID list
compID = []

#functions
os.chdir(path)

#make new file for CSVs, determine data source
os.chdir('/Users/raleighlukas/desktop')
tname = raw_input('Test name: ')
while True:
	dtype = raw_input('Is the data from experiment or simulation? ')
	match1 = re.search('(E|e)xp', dtype)
	match2 = re.search('(S|s)im', dtype)
	match3 = re.search('(P|p)ro', dtype)
	if match1:
		dtype = 'Experiment'
		line_type = '-'
		break
	elif match2:
		dtype = 'Simulation'
		line_type = '--'
		break
	elif match3:
		dtype = 'Procedure'
		line_type = ':'
		break
	else:
		print 'Data source not recognized'

ftitle = date+'_'+tname+'_'+dtype+'.csv'
ftitle = ftitle.replace('/','_')
newfile = open(ftitle,'w')
os.chdir(path)
#loop for however many data sets
for w in range(len(locations)):

	#stupid code for moving to location of 1 time
	a = locations[w]-1
	nfile = open(tfile)
	for i in range(0,a):
		nfile.readline()

	#make varray with comma separated value, list of lists containing values
	warn = False
	varray = []
	with nfile as f:
		headert = f.readline()		#gets header titles
		headert = ','.join(shlex.split(headert))

		comps = f.readline()		#gets component IDs
		comps = ','.join(shlex.split(comps))

		units = f.readline()
		units = ','.join(shlex.split(units))
		f.readline()

		i = 0
		while warn == False:		# gets data
			rline = f.readline()
			rline = ','.join(shlex.split(rline))
			try:
				isnum = is_number(rline[2])
				if isnum:
					varray.append(rline)
					warn = False
					i=i+1
				else:
					warn = True
			except IndexError:
				warn = True

	#modify comps to remove first element, get list of ID portions of each code
	if w == 0:
		comps = comps.split(',')
		comps = comps[1:]		#removes (sec) that's in component line
		for i in range(len(comps)):
			a = comps[i]
			b = a[0:3]
			compID.append(b)


	#write to CSV file
	comps = ','.join(comps)
	headerts = headert[1:]	#puts extra space unless do this
	if w == 0:
		newfile.write(headerts[1:]+'\n')
		newfile.write('(sec),')	#needs extra space
		newfile.write(comps+'\n')
		newfile.write(','+units+'\n')
	for i in range(len(varray)):
		newfile.write(varray[i]+'\n')

			
	# convert strings in varray into floats in finarray
	finarray = []
	for i in range(len(varray)):				#loop thru varray
		substr = varray[i]
		sublist = substr.split(',')
		for j in range(len(sublist)):			#loop thru sublist
			item1 = sublist[j]
			item1 = float(item1)				#make strs ints
			sublist[j] = item1
		finarray.append(sublist)				#make new list of edited sublists

	# makes separate list for x and y values, mxlist and mylist
	xlist = []
	ylist = []
	for i in range(len(finarray)):
			sublist = finarray[i]
			xlist.append(sublist[0])
			ylist.append(sublist[1:])


	#pulls some moves to fix mylist
	mylist = np.transpose(ylist)
	mylist = list(mylist)
	
	#make list of what will be title, axis labels
	substr = headert
	substr1 = comps
	hlist = substr.split(',')
	clist = substr.split(',')
	clist = clist[1:]
	if hlist[0] == '1' and hlist[1] == 'time':
		hlist.remove('1')


	#make master xlist,ylist
	pxlist.append(xlist)

	#initialize length of pylist, only need to do once
	if w == 0:		
		for i in range(len(mylist)):
			pylist.append([])

	
	#append y list to master list
	for i in range(len(mylist)):
		a = mylist[i]
		pylist[i].append(a)

newfile.close()


#make dictionary
compDic = dicMaker()
hlist_copy = copy.copy(hlist)
hlist = hlist[1:]
for i in range(len(hlist)):
	if hlist[i] == 'tempf':
		hlist[i] = 0
	elif hlist[i] == 'P':
		hlist[i] = 5
	elif hlist[i] == 'MFLOWJ':
		hlist[i] = 1
	else:
		print("Invalid unit type: '%s' detected.  If unit of data is not specified as P, tempf, or \nMFLOWJ, will need to go into code and add in new unit. Code block is commented #make dictionary") %hlist[i]
		sys.exit()

#Define color of each component
pcount = 0
bcount = 0
ycount = 0
lcount = 0
rcount = 0
cycount = 0

for i in compID:
	i = int(i)
	if 190<=i<=260 or 521<=i<=530 or i==221 or i==331:
		pcount += 1
	elif 10<=i<=40 or i==401 or i==50 or 500<=i<=505:
		rcount += 1
	elif 60<=i<=110 or 140<=i<=180 or 506<=i<=514 or 517<=i<=520 or i==170:
		bcount += 1
	elif i==120 or i== 130 or i==515 or i==516:
		cycount += 1
	elif 300<=i<=330 or i==402 or 531<=i<=536 or i==340:
		lcount += 1
	elif 351<=i<=390 or 537<=i<=544:
		ycount += 1
	else:
		print('NUMBER'+str(i))

pnumber = 0
rnumber = 0
bnumber = 0
cynumber = 0
ynumber = 0
lnumber = 0

colorDic = {}
for i,j in zip(compID,range(len(compID))):
	i=int(i)
	if 190<=i<=260 or 521<=i<=530 or i==221 or i==331:
		if pcount == 1:
			pcolor = 0.9
		else:
			pstep = 0.5/(pcount-1)
			pcolor = 0.5 + pstep*pnumber
		colorDic[i] = (pcolor,0,pcolor)
		pnumber += 1
	elif 10<=i<=40 or i==401 or i==50 or 500<=i<=505:
		if rcount == 1:
			rcolor = 1
		else:
			rstep = 0.7/(rcount-1)
			rcolor = 0.3+rstep*rnumber
		colorDic[i]=(rcolor,0,0)
		rnumber += 1
	elif 60<=i<=110 or 140<=i<=180 or 506<=i<=514 or 517<=i<=520 or i==170:
		if bcount == 1:
			bcolor = 1
		else:
			bstep = 0.7/(bcount-1)
			bcolor = 0.3 + bstep*bnumber
		colorDic[i] = (0,0,bcolor)
		bnumber += 1
	elif i==120 or i== 130 or i==515 or i==516:
		if cycount == 1:
			cycolor = 1
		else:
			cystep = 0.3/(cycount-1)
			cycolor = 0.7 + cystep*cynumber
		colorDic[i] = (0,cycolor,cycolor)
		cynumber += 1
	elif 300<=i<=330 or i==402 or 531<=i<=536 or i==340:
		if lcount == 1:
			lcolor = 1
		else:
			lstep = 0.7/(lcount-1)
			lcolor = 0.3 + lstep*lnumber
		colorDic[i] = (0,lcolor,0)
		lnumber += 1
	elif 351<=i<=390 or 537<=i<=544:
		if ycount == 1:
			ycolor = 1
		else:
			ystep = 0.5/(ycount-1)
			ycolor = 0.5+ystep*ynumber
		colorDic[i] = (ycolor,ycolor,0)
		ynumber += 1

#Make sure all component ID's in RELAP output are accounted for in dictionary
for i in compID:
	try:
		compDic[i]
	except KeyError:
		print 'Unit ID: %s not found in dictionary CIET_RELAP_dic.txt' %i
		sys.exit()



#find element volumes
#make strings to be searched for
compID0 = []
compID1 = []
compID3 = []
#volume flow area associated with "ID0101"
#volume flow length associated with "ID0301"
for i in range(len(compID)):
	compID1.append(' '+compID[i]+'0101 ')
	compID3.append(' '+compID[i]+'0301 ')
	compID0.append(' '+compID[i]+'0000 ')
	element_zero = compID0[i]
	hydrogen = compID1[i]
	lithium = compID3[i]	#get it?
	if hydrogen[1] == '0':	#component 011 is listed as 11 in RELAP file, have to remove leading 0
		compID0[i] = ' '+element_zero[2:]
		compID1[i] = ' '+hydrogen[2:]
		compID3[i] = ' '+lithium[2:]

#open file, search each line for occurence of "ID0101" and "ID0301",
# then take volume and length out, of line depending on component type
flow_area = {}
flow_length = {}
comp_type_dic = {}
flow_area_avail = {}
for i in range(len(compID1)):
	os.chdir(path)
	searchfile = open(tfile, "r")
	with searchfile as nfile:
		trigger = False
		for line in nfile:
			if re.search(compID0[i], line):
				line0 = re.split('[ |,]+', line.strip())
				if line0[-1] == 'pipe':
					trigger = True
					comp_type_dic[compID[i]] = 'pipe'
				elif line0[-1] == 'snglvol':
					trigger = True
					comp_type_dic[compID[i]] = 'snglvol'
				elif line0[-1] == 'tmdpvol':
					trigger = True
					comp_type_dic[compID[i]] = 'tmdpvol'
				elif line0[-1] == 'sngljun':
					trigger = True
					comp_type_dic[compID[i]] = 'sngljun'
				elif line0[-1] == 'valve':
					trigger = True
					comp_type_dic[compID[i]] = 'valve'
				elif line0[-1] == 'tmdpjun':
					trigger = True
					comp_type_dic[compID[i]] = 'tmdpjun'
				elif line0[-1] == 'branch':
					trigger = True
					comp_type_dic[compID[i]] = 'branch'
		if not trigger:
			comp_type_dic[compID[i]] = 'other'

	trigger = False
	searchfile = open(tfile, "r")	
	with searchfile as nfile:
		for line in nfile:
			if comp_type_dic[compID[i]] == 'pipe':
				flow_area_avail[compID[i]] = True
				trigger = True
				if re.search(compID1[i], line):
					line1 = re.split('[ |,]+', line.strip())
					flow_area[compID[i]] = float(line1[-2])
				if re.search(compID3[i], line):
					line2 = re.split('[ |,]+', line.strip())
					flow_length[compID[i]] = float(line2[-2])*float(line2[-1])
			elif comp_type_dic[compID[i]] == 'snglvol':
				flow_area_avail[compID[i]] = True
				trigger = True
				if re.search(compID1[i], line):
					line1 = re.split('[ |,]+', line.strip())
					flow_area[compID[i]] = float(line1[2])
					flow_length[compID[i]] = float(line1[3])
			elif comp_type_dic[compID[i]] == 'branch':
				flow_area_avail[compID[i]] = True
				trigger = True
				if re.search(compID1[i], line):
					line1 = re.split('[ |,]+', line.strip())
					flow_area[compID[i]] = float(line1[2])
					flow_length[compID[i]] = float(line1[3])
		if not trigger:
			flow_area_avail[compID[i]] = False


flow_vol = {}
for i in flow_area:
	try:
		flow_vol[i]=flow_area[i]*flow_length[i]
	except IndexError:
		print 'Failed to find volume for component: %s' %i
		print flow_vol
		sys.exit()


#join list of lists
pxlist = list(itertools.chain(*pxlist))
for i in range(len(pylist)):
	pylist[i] = list(itertools.chain(*pylist[i]))


#unit conversions
unit_asked = False
for i in range(len(compID)):
	a = compDic[compID[i]]
	if hlist[i] == 0:
		if unit_asked == False:
			unit_asked = True
			while True:
				tempunit = raw_input('Kelvin(K) or Celsius(C)? ')
				if re.search('((K|k)|(C|c))', tempunit):
					break
				else:
					print 'Invalid unit'
		if re.search('(C|c)', tempunit):
			for j in range(len(pylist[i])):
				pylist[i][j]=pylist[i][j]-273.15


unit_asked = False
for i in range(len(compID)):
	a = compDic[compID[i]]
	if hlist[i] == 5:
		if unit_asked == False:
			unit_asked = True
			while True:
				presunit = raw_input('Pascals(Pa) or mm Dowtherm(mmD)? ')
				if re.search('(P|p)a|mm(D|d)', presunit):
					break
				else:
					print 'Invalid unit'
		if re.search('mm(D|d)', presunit):
			for j in range(len(pylist[i])):
				pylist[i][j]=1000*pylist[i][j]/(9.81*(1078-0.85*25)) #density correlation from CIET IRP Final Report

while True:
	try:
		temp = float(raw_input('Mean temperature in Celsius: '))
		break
	except ValueError:
		print 'Invalid temperature, please enter a number'
unit_asked = False
vol_convert = False #needed for power calculations
for i in range(len(compID)):
	a = compDic[compID[i]]
	if hlist[i] == 1:
		if unit_asked == False:
			unit_asked = True
			while True:
				mfunit = raw_input('Mass flow rate in kg/s(w) or volumetric flow rate in m^3/s(Q)? ')
				if re.search('((Q|q)|(w|W))', mfunit):
					break
				else:
					print 'Invalid unit'
		if re.search('(Q|q)', mfunit):
			while True:
				res_time = raw_input('Would you like a graph of residence time as well?: ')
				if re.search('(Y|y)', res_time):
					res_wanted = True
					break
				elif re.search('(N|n)', res_time):
					res_wanted = False
					break
				else:
					print 'Answer not recognized. Y for yes, N for no'

			for j in range(len(pylist[i])):
				pylist[i][j]=pylist[i][j]/(1078-0.85*temp)  #density correlation from CIET IRP Final Report
			vol_convert = True
			res_data = []
			if res_wanted and flow_area_avail[compID[i]]:
				for j in range(len(pylist[i])):
					res_data.append(flow_vol[compID[i]]/pylist[i][j])
				pylist.append(res_data)
				hlist.append(6)
				compID.append(compID[i])
			elif not flow_area_avail[compID[i]]:
				print 'Volume data not available/applicable for component: %s' %compID[i]


#find number of temperature data colums and location of mass flow column
num_temp = 0
loc_temp = []
for i in range(len(hlist)):
	if hlist[i] == 0:
		num_temp += 1
		loc_temp.append(i)
	if hlist[i] == 1:
		loc_mf = i

#finds if user wanted power data plotted too
# if so, make temp_list which is list of all lists of temperature data
#then execute nested for loop, basically for each set of temperature data,
#check if it has been combined with all others in the list.  If so, skip it,
#if not, calculate the power from those two temperature datas and the mass flow data,
# then append that to pylist.  power calculated with q(dot) = m(dot)(Cp)(deltaT)
temp_list = []
keep_track = []
power_added = 0
power_wanted = False
if num_temp > 1 and 1 in hlist:
	while True:
		power_wanted = raw_input("Do you want plots of power? ")
		if re.search('Y|y', power_wanted):
			power_wanted = True
			break
		elif re.search('N|n', power_wanted):
			power_wanted = False
			break
		else:
			print 'Answer not recognized, please input Yes or No'
	if power_wanted:
		for i in range(num_temp):
			temp_list.append(pylist[loc_temp[i]])
		for i in range(len(temp_list)):
			for j in range(len(temp_list)):
				if i != j:
					set1 = i + 10*j
					set2 = j + 10*i
					if not (set1 in keep_track or set2 in keep_track) and not vol_convert:
						power_data = []
						for k in range(len(pylist[loc_mf])):
							power_data.append(0.001*pylist[loc_mf][k]*(1518+2.82*temp)*(temp_list[i][k]-temp_list[j][k]))  #heat capacity correlation for Dowtherm A from CIET IRP final report
						power_added += 1
						pylist.append(power_data)
						hlist.append(4)
						compID.append(compID[loc_temp[i]]+' and '+compID[loc_temp[j]])
						keep_track.append(i+10*j)
					elif not (set1 in keep_track or set2 in keep_track) and vol_convert:
						power_data = []
						for k in range(len(pylist[loc_mf])):
							power_data.append(.001*(1078-0.85*temp)*pylist[loc_mf][k]*(1518+2.82*temp)*(temp_list[i][k]-temp_list[j][k]))
						power_added += 1
						pylist.append(power_data)
						hlist.append(4)
						compID.append(compID[loc_temp[i]]+' and '+compID[loc_temp[j]])
						keep_track.append(i+10*j)

#display combinations
if power_wanted:
	for i in range(power_added):
		comp_str = re.split(' +', compID[-(i+1)])
		comp1 = comp_str[0]
		comp2 = comp_str[2]
		print 'Combination (%d): %s and %s' %(i+1 , compDic[comp1][0] , compDic[comp2][0])

	#Find which power graphs are wanted
	while True:
		entry_valid = True
		comp_desired = raw_input('Please enter the combinations you would like: ')
		comp_desired = re.findall('\d+', comp_desired)
		for i in range(len(comp_desired)):
			if float(comp_desired[i]) not in range(1,power_added+1):
				entry_valid = False
		if len(comp_desired)>0 and entry_valid:
			break
		else:
			print 'Combinations not recognized'

	#change to int
	for i in range(len(comp_desired)):
		comp_desired[i] = int(comp_desired[i])
	comp_desired = sorted(comp_desired)

	#make list of unwanted data
	comp_undesired = []
	for i in range(1,power_added+1):
		if i not in comp_desired:
			comp_undesired.append(i)

	#remove unwanted data sets
	num_removed = 0
	if len(comp_undesired)<power_added:
		for i in comp_undesired:
			compID.pop(-(i-num_removed))
			hlist.pop(-(i-num_removed))
			pylist.pop(-(i-num_removed))
			num_removed += 1

	#write power data to .csv by successively copying data, appending new column, then deleting old file, then rename newest file
	os.chdir('/Users/raleighlukas/desktop')
	csvfile = ftitle
	new = ''
	count = 0
	for i in pylist[-(power_added-num_removed):]:
		with open(new+csvfile, 'rb') as fin, open('new_'+new+csvfile, 'wb') as fout:
			reader = csv.reader(fin, lineterminator='\n')
			writer = csv.writer(fout, lineterminator='\n')
			ID_list = copy.copy(compID[-(power_added-num_removed):])
			writer.writerow(next(reader) + ['Power '+ ID_list[count]])
			writer.writerow(next(reader))
			writer.writerow(next(reader) + ['(kW)'])
			for row, val in zip(reader, i):
				writer.writerow(row + [val])
			new = new + 'new_'
			count += 1

	new1 = 'new_'
	for i in range(count-1):
		os.remove(new1+csvfile)
		new1 = 'new_'+new1
	os.rename(new+csvfile, csvfile)

#find which types of graphs need labels
tempU = False
massfU = False
powerU = False
pressU = False
primU = False
dracsU = False
timeU = False

for i in range(len(compID)):
	if hlist[i] == 0:
		tempU = True
	elif hlist[i] == 1:
		massfU = True
	elif hlist[i] == 4:
		powerU = True
	elif hlist[i] == 5:
		pressU = True
	elif hlist[i] == 6:
		timeU = True
	try:
		dic_entry = compDic[compID[i]]
	except KeyError:
		dic_entry = [0,0]
	if dic_entry[1] == 2:
		primU = True
	elif dic_entry[1] == 3:
		dracsU = True

#takes labels, plots
#have to initialize for purpose of dictionaries later on
ylabT = 	0
titleT = 	0
ylabMF = 	0
titleMF = 	0
ylabPWR = 	0
titlePWR = 	0
ylabPRS = 	0
titlePRS = 	0
ylabTM = 	0
titleTM = 	0

print 'X label listed as %s' %hlist_copy[0]
xlab = raw_input("X label: ")
print 'Y labels listed as: %s' %(' ').join(hlist_copy[1:])
if tempU:
	ylabT = raw_input("Y label (temperature graphs): ")
	titleT = raw_input("Title (temperature graphs): ")
if massfU:
	ylabMF = raw_input("Y label (flow rate graphs): ")
	titleMF = raw_input("Title (flow rate graphs): ")
if powerU:
	ylabPWR = raw_input('Y label (power graphs, units are kW): ')
	titlePWR = raw_input('Title (power graphs): ')
if pressU:
	ylabPRS = raw_input('Y label (pressure graphs): ')
	titlePRS = raw_input('Title (pressure graphs): ')
if timeU:
	ylabTM = raw_input('Y label (residence time graphs): ')
	titleTM = raw_input('Title (residence time graphs): ')


#make graphs
count = 1 								#used with trackDic to count plots
color_used = []							#for power plots, keep track of which color has been used
symDic = {0:'',1:'o',4:'s',5:'^',6:'x'} #which symbols plotted
trackDic = {}							#which plot contains which combination of unit and DRACS or Primary
ylabDic = {(2,0) : ylabT, (3,0): ylabT, (2,1): ylabMF, (3,1): ylabMF, (2,4): ylabPWR, (3,4): ylabPWR, (2,5): ylabPRS, (3,5): ylabPRS, (2,6):ylabTM, (3,6):ylabTM }
tlabDic = {(2,0) : titleT, (3,0): titleT, (2,1): titleMF, (3,1): titleMF, (2,4): titlePWR, (3,4): titlePWR, (2,5): titlePRS, (3,5): titlePRS, (2,6): titleTM, (3,6):titleTM }
for i in range(len(compID)):
	try:
		dic_entry = compDic[compID[i]]	
	except KeyError:
		word_split = re.split(' +', compID[i])
		comp1 = word_split[0]
		comp2 = word_split[2]
		dic_entry = compDic[comp1]
	prim_or_drc = dic_entry[1]
	type_of_plot = hlist[i]
	if (prim_or_drc, type_of_plot) not in trackDic:
		trackDic[(prim_or_drc, type_of_plot)] = count
		count += 1
	plt.figure(trackDic[(prim_or_drc, type_of_plot)])
	plt.xlabel(xlab)
	plt.ylabel(ylabDic[(prim_or_drc, type_of_plot)])
	plt.title(tlabDic[(prim_or_drc, type_of_plot)])
	# if not a power graphs
	if hlist[i] != 4:
		plt.plot(pxlist,pylist[i], line_type + symDic[type_of_plot], label = dic_entry[0], color = colorDic[int(compID[i])], linewidth = 2)
		plt.legend(loc=0)
	#if power graph and haven't used color from component 1
	elif comp1 not in color_used:
		plt.plot(pxlist,pylist[i], line_type + symDic[type_of_plot], label = compDic[comp1][0]+' and '+compDic[comp2][0], linewidth = 2, color = colorDic[int(comp1)])
		color_used.append(comp1)
		plt.legend(loc=0)
	#if power graph and have used color from component 1
	else:
		plt.plot(pxlist,pylist[i], line_type + symDic[type_of_plot], label = compDic[comp1][0]+' and '+compDic[comp2][0], linewidth = 2, color = colorDic[int(comp2)])
		color_used.append(comp2)
		plt.legend(loc=0)

plt.show()