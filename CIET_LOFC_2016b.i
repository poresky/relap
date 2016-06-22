=CIET 1.0 Facility Model
* Using adiabatic conditions on outer surface of heater outer tube (no insulation) (card 10101601)
* Increased thermal insulation UA to increase heat losses, based on experimental data
* Parameters to be adjusted before each run:
* - Heater power in general table (end of input)
* - CTAH and TCHX outlet temperatures in general tables (end of input)
* - K for each needle valve, based on number of turns open (cards 5050101 [V-11], 5120101 [V-40], 5250101 [V-20] and 5410101 [V-60])
* - Trip valve parameters for open/closed branches (look for vlv)
* - Initial temperatures in all components for transients (cards CCC1201)
* - Initial mass flow rates in all components for transients (cards CCC1301)
* - Initial mass flow rates in all junctions for transients (cards CCC0201)
* - Initial mass flow rates in all branches for transients (cards CCCN201)
* - Ambient temperature in general table (end of input)
* Sensitivity analysis:
* - Expansion tanks temperature
* - Initial temperatures, pressures, mass flow rates
* Future updates:
* - Add pump
* - Add by-pass line
* - Implement actual heat transfer correlations for fan-cooled heat exchangers
* New problem using non-standard fluid; transient mode
100 newath transnt
* SI units for input; SI units for output
102 si si
* Reference volume; reference elevation; fluid (Dowtherm A)
120   10010000 0.0000  dowa
121  300010000 1.8701  dowa
* End time; min time step; max time step; control option;
* Minor edit frequency; major edit frequency; restart frequency
201  3020.000   1.0e-6 1.0  15011  100 1000 1000
202  3120.000   1.0e-7 0.1  15011   10 1000 1000
203  4000.000   1.0e-6 1.0  15011  100 1000 1000
* Minor edit requests: variable request code; parameter
301  tempf   180010000
302  tempf   030020000
303  tempf   231010000
304  tempf   260010000
 
**************************
* Hydrodynamic components
**************************
*
* Heater Bottom
* Component name; component type
110000 heat_bot pipe
* Number of elements
110001 2
* Volume flow area; which elements
110101 3.64e-4,2
* Volume length; which elements
110301 0.09843,2
* Volume azimuthal angle; which elements (optional card)
110501 0.0,2
* Volume inclination angle; which elements (required)
110601 90.0,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
110801 1.5e-5,6.60e-3,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
111001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
111101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
111201 3,1.45e5,368.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
111300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
111301 0.18,0.18,0.,1
*
* Heater
* Component name; component type
100000 heater pipe
* Number of elements
100001 15
* Volume flow area; which elements
100101 3.64e-4,15
* Volume length; which elements
100301 0.10922,15
* Volume azimuthal angle; which elements (optional card)
100501 0.0,15
* Volume inclination angle; which elements (required)
100601 90.0,15
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
100801 1.5e-5,6.60e-3,15
* tlpvbfe (see p.130 of Manual Appendix A); which elements
101001 0,15
* jefvcahs (see p.132 of Manual Appendix A); which elements
101101 0,14
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
101201 3,1.41e5,368.15,0.,0.,0.,15
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
101300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
101301 0.18,0.18,0.,14
*
* Heater Top
* Component name; component type
120000 heat_top pipe
* Number of elements
120001 1
* Volume flow area; which elements
120101 3.64e-4,1
* Volume length; which elements
120301 0.08890,1
* Volume azimuthal angle; which elements (optional card)
120501 0.0,1
* Volume inclination angle; which elements (required)
120601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
120801 1.5e-5,6.60e-3,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
121001 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
121201 3,1.4e5,368.15,0.,0.,0.,1
* Junction initial conditions control option
*
* Heater Mixer Pipe
* Component name; component type
200000 heatmix1 pipe
* Number of elements
200001 1
* Volume flow area; which elements
200101 6.11e-4,1
* Volume length; which elements
200301 0.14943,1
* Volume azimuthal angle; which elements (optional card)
200501 0.0,1
* Volume inclination angle; which elements (required)
200601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
200801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
201001 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
201201 3,1.39e5,371.15,0.,0.,0.,1
*
* Heater Mixer
* Component name; component type
210000 heatmix2 pipe
* Number of elements
210001 1
* Volume flow area; which elements
210101 6.11e-4,1
* Volume length; which elements
210301 0.33000,1
* Volume azimuthal angle; which elements (optional card)
210501 0.0,1
* Volume inclination angle; which elements (required)
210601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
210801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
211001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
211201 3,1.38e5,371.15,0.,0.,0.,1
*
* Hot Leg 1
* Component name; component type
300000 hotleg1 pipe
* Number of elements
300001 12
* Volume flow area; which elements
300101 6.11e-4,12
* Volume length; which elements
300301 0.10689,12
* Volume azimuthal angle; which elements (optional card)
300501 0.0,12
* Volume inclination angle; which elements (required)
300601 90.0,12
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
300801 1.5e-5,2.79e-2,12
* tlpvbfe (see p.130 of Manual Appendix A); which elements
301001 0,12
* jefvcahs (see p.132 of Manual Appendix A); which elements
301101 0,11
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
301201 3,1.3e5,371.15,0.,0.,0.,12
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
301300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
301301 0.18,0.18,0.,11
*
* Hot Leg 2
* Component name; component type
400000 hotleg2 pipe
* Number of elements
400001 2
* Volume flow area; which elements
400101 6.11e-4,2
* Volume length; which elements
400301 0.12065,2
* Volume azimuthal angle; which elements (optional card)
400501 180.0,2
* Volume inclination angle; which elements (required)
400601 49.74338742,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
400801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
401001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
401101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
401201 3,1.2e5,371.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
401300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
401301 0.18,0.18,0.,1
*
* CTAH Inlet Mixer Pipe
* Component name; component type
600000 CTAHmix1 pipe
* Number of elements
600001 1
* Volume flow area; which elements
600101 6.11e-4,1
* Volume length; which elements
600301 0.15260,1
* Volume azimuthal angle; which elements (optional card)
600501 0.0,1
* Volume inclination angle; which elements (required)
600601 51.52638425,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
600801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
601001 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
601201 3,1.15e5,366.15,0.,0.,0.,1
*
* CTAH Inlet Mixer
* Component name; component type
610000 CTAHmix2 pipe
* Number of elements
610001 1
* Volume flow area; which elements
610101 6.11e-4,1
* Volume length; which elements
610301 0.33000,1
* Volume azimuthal angle; which elements (optional card)
610501 0.0,1
* Volume inclination angle; which elements (required)
610601 51.52638425,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
610801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
611001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
611201 3,1.12e5,366.15,0.,0.,0.,1
*
* CTAH Vertical
* Component name; component type
710000 CTAH_ver pipe
* Number of elements
710001 3
* Volume flow area; which elements
710101 1.33e-3,3
* Volume length; which elements
710301 0.11007,3
* Volume azimuthal angle; which elements (optional card)
710501 0.0,3
* Volume inclination angle; which elements (required)
710601 -90.0,3
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
710801 1.5e-5,1.19e-2,3
* tlpvbfe (see p.130 of Manual Appendix A); which elements
711001 10,3
* jefvcahs (see p.132 of Manual Appendix A); which elements
711101 0,2
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
711201 3,1.15e5,366.15,0.,0.,0.,3
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
711300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
711301 0.18,0.18,0.,2
*
* CTAH Horizontal
* Component name; component type
720000 CTAH_hor pipe
* Number of elements
720001 11
* Volume flow area; which elements
720101 1.33e-3,11
* Volume length; which elements
720301 0.11220,11
* Volume azimuthal angle; which elements (optional card)
720501 180.0,11
* Volume inclination angle; which elements (required)
720601 0.0,11
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
720801 1.5e-5,1.19e-2,11
* tlpvbfe (see p.130 of Manual Appendix A); which elements
721001 10,11
* jefvcahs (see p.132 of Manual Appendix A); which elements
721101 0,10
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
721201 3,1.2e5,366.15,0.,0.,0.,11
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
721300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
721301 0.18,0.18,0.,10
*
* CTAH Outlet Mixer Pipe
* Component name; component type
800000 CTAHmix3 pipe
* Number of elements
800001 2
* Volume flow area; which elements
800101 6.11e-4,2
* Volume length; which elements
800301 0.11123,2
* Volume azimuthal angle; which elements (optional card)
800501 0.0,2
* Volume inclination angle; which elements (required)
800601 -90.0,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
800801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
801001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
801101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
801201 3,1.2e5,353.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
801300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
801301 0.18,0.18,0.,1
*
* CTAH Outlet Mixer
* Component name; component type
810000 CTAHmix4 pipe
* Number of elements
810001 1
* Volume flow area; which elements
810101 6.11e-4,1
* Volume length; which elements
810301 0.33000,1
* Volume azimuthal angle; which elements (optional card)
810501 0.0,1
* Volume inclination angle; which elements (required)
810601 -90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
810801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
811001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
811201 3,1.2e5,353.15,0.,0.,0.,1
*
* Cold Leg 1
* Component name; component type
900000 coldleg1 pipe
* Number of elements
900001 7
* Volume flow area; which elements
900101 6.11e-4,7
* Volume length; which elements
900301 0.10160,7
* Volume azimuthal angle; which elements (optional card)
900501 0.0,7
* Volume inclination angle; which elements (required)
900601 -42.73211004,7
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
900801 1.5e-5,2.79e-2,7
* tlpvbfe (see p.130 of Manual Appendix A); which elements
901001 0,7
* jefvcahs (see p.132 of Manual Appendix A); which elements
901101 0,6
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
901201 3,1.3e5,353.15,0.,0.,0.,7
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
901300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
901301 0.18,0.18,0.,6
*
* Cold Leg 2
* Component name; component type
1000000 coldleg2 pipe
* Number of elements
1000001 22
* Volume flow area; which elements
1000101 6.11e-4,22
* Volume length; which elements
1000301 0.11141,22
* Volume azimuthal angle; which elements (optional card)
1000501 0.0,22
* Volume inclination angle; which elements (required)
1000601 -90.0,22
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1000801 1.5e-5,2.79e-2,22
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1001001 0,22
* jefvcahs (see p.132 of Manual Appendix A); which elements
1001101 0,21
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1001201 3,1.4e5,353.15,0.,0.,0.,22
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1001300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1001301 0.18,0.18,0.,21
*
* Cold Leg 3
* Component name; component type
1100000 coldleg3 pipe
* Number of elements
1100001 4
* Volume flow area; which elements
1100101 6.11e-4,4
* Volume length; which elements
1100301 0.12065,4
* Volume azimuthal angle; which elements (optional card)
1100501 180.0,4
* Volume inclination angle; which elements (required)
1100601 -63.47464798,4
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1100801 1.5e-5,2.79e-2,4
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1101001 0,4
* jefvcahs (see p.132 of Manual Appendix A); which elements
1101101 0,3
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1101201 3,1.41e5,353.15,0.,0.,0.,4
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1101300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1101301 0.18,0.18,0.,3
*
* Pump Suction
* Component name; component type
1200000 pumpsuc pipe
* Number of elements
1200001 3
* Volume flow area; which elements
1200101 6.11e-4,3
* Volume length; which elements
1200301 0.11113,3
* Volume azimuthal angle; which elements (optional card)
1200501 180.0,3
* Volume inclination angle; which elements (required)
1200601 0.0,3
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1200801 1.5e-5,2.79e-2,3
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1201001 0,3
* jefvcahs (see p.132 of Manual Appendix A); which elements
1201101 0,2
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1201201 3,1.45e5,353.15,0.,0.,0.,3
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1201300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1201301 0.18,0.18,0.,2
*
* Pump Discharge
* Component name; component type
1300000 pumpdis pipe
* Number of elements
1300001 12
* Volume flow area; which elements
1300101 6.11e-4,12
* Volume length; which elements
1300301 0.10610,12
* Volume azimuthal angle; which elements (optional card)
1300501 180.0,12
* Volume inclination angle; which elements (required)
1300601 0.0,12
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1300801 1.5e-5,2.79e-2,12
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1301001 0,12
* jefvcahs (see p.132 of Manual Appendix A); which elements
1301101 0,11
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1301201 3,1.45e5,353.15,0.,0.,0.,12
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1301300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1301301 0.18,0.18,0.,11
*
* Cold Leg 4
* Component name; component type
1400000 coldleg4 pipe
* Number of elements
1400001 6
* Volume flow area; which elements
1400101 6.11e-4,6
* Volume length; which elements
1400301 0.11145,6
* Volume azimuthal angle; which elements (optional card)
1400501 0.0,6
* Volume inclination angle; which elements (required)
1400601 90.0,6
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1400801 1.5e-5,2.79e-2,6
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1401001 0,6
* jefvcahs (see p.132 of Manual Appendix A); which elements
1401101 0,5
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1401201 3,1.4e5,353.15,0.,0.,0.,6
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1401300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1401301 0.18,0.18,0.,5
*
* CTAH Flowmeter
* Component name; component type
1410000 CTAHflo pipe
* Number of elements
1410001 1
* Volume flow area; which elements
1410101 6.11e-4,1
* Volume length; which elements
1410301 0.36,1
* Volume azimuthal angle; which elements (optional card)
1410501 0.0,1
* Volume inclination angle; which elements (required)
1410601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1410801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1411001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1411201 3,1.35e5,353.15,0.,0.,0.,1
*
* Cold Leg 5
* Component name; component type
1500000 coldleg5 pipe
* Number of elements
1500001 3
* Volume flow area; which elements
1500101 6.11e-4,3
* Volume length; which elements
1500301 0.11853,3
* Volume azimuthal angle; which elements (optional card)
1500501 180.0,3
* Volume inclination angle; which elements (required)
1500601 -49.36983394,3
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1500801 1.5e-5,2.79e-2,3
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1501001 0,3
* jefvcahs (see p.132 of Manual Appendix A); which elements
1501101 0,2
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1501201 3,1.35e5,353.15,0.,0.,0.,3
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1501300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1501301 0.18,0.18,0.,2
*
* Cold Leg 6
* Component name; component type
1600000 coldleg6 pipe
* Number of elements
1600001 6
* Volume flow area; which elements
1600101 6.11e-4,6
* Volume length; which elements
1600301 0.10742,6
* Volume azimuthal angle; which elements (optional card)
1600501 0.0,6
* Volume inclination angle; which elements (required)
1600601 -90.0,6
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1600801 1.5e-5,2.79e-2,6
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1601001 0,6
* jefvcahs (see p.132 of Manual Appendix A); which elements
1601101 0,5
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1601201 3,1.4e5,353.15,0.,0.,0.,6
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1601300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1601301 0.18,0.18,0.,5
*
* Cold Leg 7
* Component name; component type
1800000 coldleg7 pipe
* Number of elements
1800001 1
* Volume flow area; which elements
1800101 6.11e-4,1
* Volume length; which elements
1800301 0.17780,1
* Volume azimuthal angle; which elements (optional card)
1800501 180.0,1
* Volume inclination angle; which elements (required)
1800601 -40.00520088,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1800801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1801001 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1801201 3,1.41e5,353.15,0.,0.,0.,1
*
* DHX Leg 1
* Component name; component type
1900000 DHXleg1 pipe
* Number of elements
1900001 2
* Volume flow area; which elements
1900101 6.11e-4,2
* Volume length; which elements
1900301 0.10954,2
* Volume azimuthal angle; which elements (optional card)
1900501 180.0,2
* Volume inclination angle; which elements (required)
1900601 -31.44898139,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
1900801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
1901001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
1901101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
1901201 3,1.41e5,348.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
1901300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
1901301 0.018,0.018,0.,1
*
* DHX Leg 2
* Component name; component type
2000000 DHXleg2 pipe
* Number of elements
2000001 3
* Volume flow area; which elements
2000101 6.11e-4,3
* Volume length; which elements
2000301 0.11218,3
* Volume azimuthal angle; which elements (optional card)
2000501 180.0,3
* Volume inclination angle; which elements (required)
2000601 0.0,3
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2000801 1.5e-5,2.79e-2,3
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2001001 0,3
* jefvcahs (see p.132 of Manual Appendix A); which elements
2001101 0,2
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2001201 3,1.45e5,348.15,0.,0.,0.,3
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2001300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2001301 0.018,0.018,0.,2
*
* DHX Leg 3
* Component name; component type
2100000 DHXleg3 pipe
* Number of elements
2100001 4
* Volume flow area; which elements
2100101 6.11e-4,4
* Volume length; which elements
2100301 0.12193,4
* Volume azimuthal angle; which elements (optional card)
2100501 0.0,4
* Volume inclination angle; which elements (required)
2100601 90.0,4
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2100801 1.5e-5,2.79e-2,4
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2101001 0,4
* jefvcahs (see p.132 of Manual Appendix A); which elements
2101101 0,3
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2101201 3,1.4e5,348.15,0.,0.,0.,4
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2101300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2101301 0.018,0.018,0.,3
*
* DHX Flowmeter
* Component name; component type
2110000 DHXflo pipe
* Number of elements
2110001 1
* Volume flow area; which elements
2110101 6.11e-4,1
* Volume length; which elements
2110301 0.36,1
* Volume azimuthal angle; which elements (optional card)
2110501 0.0,1
* Volume inclination angle; which elements (required)
2110601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2110801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2111001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2111201 3,1.35e5,348.15,0.,0.,0.,1
*
* DHX Leg 4
* Component name; component type
2200000 DHXleg4 pipe
* Number of elements
2200001 2
* Volume flow area; which elements
2200101 6.11e-4,2
* Volume length; which elements
2200301 0.11536,2
* Volume azimuthal angle; which elements (optional card)
2200501 0.0,2
* Volume inclination angle; which elements (required)
2200601 90.0,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2200801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2201001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
2201101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2201201 3,1.3e5,348.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2201300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2201301 0.018,0.018,0.,1
*
* DHX Leg 4b
* Component name; component type
2220000 DHXleg4b snglvol
* Volume flow area; length; volume; azimuthal angle;
* inclination angle; height; roughness; hydraulic diameter;
* tlpvbfe
2220101 6.11e-4 0.11536 0. 0. 90. 0.11536 1.5e-5 2.79e-2 0
* ebt (initial conditions options); P; T; 0; 0; 0
2220200 3,1.3e5,348.15,0.,0.,0.
*
* DHX Leg 4c
* Component name; component type
2230000 DHXleg4c snglvol
* Volume flow area; length; volume; azimuthal angle;
* inclination angle; height; roughness; hydraulic diameter;
* tlpvbfe
2230101 6.11e-4 0.11536 0. 0. 90. 0.11536 1.5e-5 2.79e-2 0
* ebt (initial conditions options)' P; T; 0; 0; 0
2230200 3,1.3e5,348.15,0.,0.,0.
*
* DHX Leg 4d
* Component name; component type
2240000 DHXleg4d pipe
* Number of elements
2240001 2
* Volume flow area; which elements
2240101 6.11e-4,2
* Volume length; which elements
2240301 0.11536,2
* Volume azimuthal angle; which elements (optional card)
2240501 0.0,2
* Volume inclination angle; which elements (required)
2240601 90.0,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2240801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2241001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
2241101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2241201 3,1.3e5,348.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2241300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2241301 0.018,0.018,0.,1
*
* DHX Leg 4e
* Component name; component type
2250000 DHXleg4e pipe
* Number of elements
2250001 2
* Volume flow area; which elements
2250101 6.11e-4,2
* Volume length; which elements
2250301 0.11536,2
* Volume azimuthal angle; which elements (optional card)
2250501 0.0,2
* Volume inclination angle; which elements (required)
2250601 90.0,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2250801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2251001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
2251101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2251201 3,1.3e5,348.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2251300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2251301 0.0,0.0,0.,1
*
* DHX Outlet Mixer Pipe
* Component name; component type
2300000 DHXmix1 pipe
* Number of elements
2300001 1
* Volume flow area; which elements
2300101 6.11e-4,1
* Volume length; which elements
2300301 0.08910,1
* Volume azimuthal angle; which elements (optional card)
2300501 0.0,1
* Volume inclination angle; which elements (required)
2300601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2300801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2301001 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2301201 3,1.25e5,348.15,0.,0.,0.,1
*
* DHX Outlet Mixer
* Component name; component type
*2310000 DHXmix2 pipe
* Number of elements
*2310001 1
* Volume flow area; which elements
*2310101 6.11e-4,1
* Volume length; which elements
*2310301 0.33000,1
* Volume azimuthal angle; which elements (optional card)
*2310501 0.0,1
* Volume inclination angle; which elements (required)
*2310601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
*2310801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
*2311001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
*2311201 3,1.25e5,348.15,0.,0.,0.,1
*
* DHX Shell Side (Primary)
* Component name; component type
2400000 DHXshell pipe
* Number of elements
2400001 11
* Volume flow area; which elements
2400101 9.43e-4,11
* Volume length; which elements
2400301 0.10795,11
* Volume azimuthal angle; which elements (optional card)
2400501 0.0,11
* Volume inclination angle; which elements (required)
2400601 90.0,11
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2400801 1.5e-5,5.65e-3,11
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2401001 0,11
* jefvcahs (see p.132 of Manual Appendix A); which elements
2401101 0,10
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2401201 3,1.2e5,348.15,0.,0.,0.,11
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2401300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2401301 0.018,0.018,0.,10
*
* DHX Inlet Mixer Pipe
* Component name; component type
2500000 DHXmix3 pipe
* Number of elements
2500001 2
* Volume flow area; which elements
2500101 6.11e-4,2
* Volume length; which elements
2500301 0.11123,2
* Volume azimuthal angle; which elements (optional card)
2500501 0.0,2
* Volume inclination angle; which elements (required)
2500601 90.0,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2500801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2501001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
2501101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2501201 3,1.2e5,333.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2501300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2501301 0.018,0.018,0.,1
*
* DHX Inlet Mixer
* Component name; component type
2510000 DHXmix4 pipe
* Number of elements
2510001 1
* Volume flow area; which elements
2510101 6.11e-4,1
* Volume length; which elements
2510301 0.33000,1
* Volume azimuthal angle; which elements (optional card)
2510501 0.0,1
* Volume inclination angle; which elements (required)
2510601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2510801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2511001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2511201 3,1.2e5,333.15,0.,0.,0.,1
*
* DHX Leg 5
* Component name; component type
2600000 DHXleg5 pipe
* Number of elements
2600001 2
* Volume flow area; which elements
2600101 6.11e-4,2
* Volume length; which elements
2600301 0.10795,2
* Volume azimuthal angle; which elements (optional card)
2600501 0.0,2
* Volume inclination angle; which elements (required)
2600601 52.57199446,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
2600801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
2601001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
2601101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
2601201 3,1.15e5,333.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
2601300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
2601301 0.018,0.018,0.,1
*
* DHX Tube Side (DRACS) Bottom
* Component name; component type
3010000 DHXbot pipe
* Number of elements
3010001 1
* Volume flow area; which elements
3010101 7.18e-4,1
* Volume length; which elements
3010301 0.11113,1
* Volume azimuthal angle; which elements (optional card)
3010501 0.0,1
* Volume inclination angle; which elements (required)
3010601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3010801 1.5e-5,6.93e-3,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3011001 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3011201 3,1.55e5,318.15,0.,0.,0.,1
*
* DHX Tube Side (DRACS)
* Component name; component type
3000000 DHXtube pipe
* Number of elements
3000001 11
* Volume flow area; which elements
3000101 7.18e-4,11
* Volume length; which elements
3000301 0.10795,11
* Volume azimuthal angle; which elements (optional card)
3000501 0.0,11
* Volume inclination angle; which elements (required)
3000601 90.0,11
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3000801 1.5e-5,6.93e-3,11
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3001001 0,11
* jefvcahs (see p.132 of Manual Appendix A); which elements
3001101 0,10
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3001201 3,1.5e5,318.15,0.,0.,0.,11
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3001300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3001301 0.,0.,0.,10
*
* DHX Tube Side (DRACS) Top
* Component name; component type
3020000 DHXtop pipe
* Number of elements
3020001 2
* Volume flow area; which elements
3020101 7.18e-4,2
* Volume length; which elements
3020301 0.09208,2
* Volume azimuthal angle; which elements (optional card)
3020501 0.0,2
* Volume inclination angle; which elements (required)
3020601 90.0,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3020801 1.5e-5,6.93e-3,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3021001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
3021101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3021201 3,1.45e5,328.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3021300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3021301 0.,0.,0.,1
*
* DHX Outlet Mixer Pipe (DRACS loop)
* Component name; component type
3100000 DHXmix5 pipe
* Number of elements
3100001 1
* Volume flow area; which elements
3100101 6.11e-4,1
* Volume length; which elements
3100301 0.14308,1
* Volume azimuthal angle; which elements (optional card)
3100501 0.0,1
* Volume inclination angle; which elements (required)
3100601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3100801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3101001 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3101201 3,1.42e5,328.15,0.,0.,0.,1
*
* DHX Outlet Mixer (DRACS loop)
* Component name; component type
3110000 DHXmix6 pipe
* Number of elements
3110001 1
* Volume flow area; which elements
3110101 6.11e-4,1
* Volume length; which elements
3110301 0.33000,1
* Volume azimuthal angle; which elements (optional card)
3110501 0.0,1
* Volume inclination angle; which elements (required)
3110601 90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3110801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3111001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3111201 3,1.42e5,328.15,0.,0.,0.,1
*
* DRACS Hot Leg 1
* Component name; component type
3200000 DRACSh1 pipe
* Number of elements
3200001 2
* Volume flow area; which elements
3200101 6.11e-4,2
* Volume length; which elements
3200301 0.11906,2
* Volume azimuthal angle; which elements (optional card)
3200501 180.0,2
* Volume inclination angle; which elements (required)
3200601 54.42289745,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3200801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3201001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
3201101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3201201 3,1.4e5,328.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3201300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3201301 0.,0.,0.,1
*
* DRACS Hot Leg 2
* Component name; component type
3300000 DRACSh2 pipe
* Number of elements
3300001 28
* Volume flow area; which elements
3300101 6.11e-4,28
* Volume length; which elements
3300301 0.10750,28
* Volume azimuthal angle; which elements (optional card)
3300501 0.0,28
* Volume inclination angle; which elements (required)
3300601 90.0,28
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3300801 1.5e-5,2.79e-2,28
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3301001 0,28
* jefvcahs (see p.132 of Manual Appendix A); which elements
3301101 0,27
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3301201 3,1.3e5,328.15,0.,0.,0.,28
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3301300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3301301 0.,0.,0.,27
*
* TCHX Horizontal
* Component name; component type
3510000 TCHX_hor pipe
* Number of elements
3510001 11
* Volume flow area; which elements
3510101 1.33e-3,11
* Volume length; which elements
3510301 0.10441,11
* Volume azimuthal angle; which elements (optional card)
3510501 180.0,11
* Volume inclination angle; which elements (required)
3510601 0.0,11
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3510801 1.5e-5,1.19e-2,11
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3511001 10,11
* jefvcahs (see p.132 of Manual Appendix A); which elements
3511101 0,10
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3511201 3,1.15e5,327.15,0.,0.,0.,11
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3511300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3511301 0.,0.,0.,10
*
* TCHX Vertical
* Component name; component type
3520000 TCHX_ver pipe
* Number of elements
3520001 4
* Volume flow area; which elements
3520101 1.33e-3,4
* Volume length; which elements
3520301 0.10398,4
* Volume azimuthal angle; which elements (optional card)
3520501 0.0,4
* Volume inclination angle; which elements (required)
3520601 -90.0,4
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3520801 1.5e-5,1.19e-2,4
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3521001 10,4
* jefvcahs (see p.132 of Manual Appendix A); which elements
3521101 0,3
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3521201 3,1.15e5,327.15,0.,0.,0.,4
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3521300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3521301 0.,0.,0.,3
*
* TCHX Outlet Mixer Pipe
* Component name; component type
3600000 TCHXmix1 pipe
* Number of elements
3600001 2
* Volume flow area; which elements
3600101 6.11e-4,2
* Volume length; which elements
3600301 0.10170,2
* Volume azimuthal angle; which elements (optional card)
3600501 0.0,2
* Volume inclination angle; which elements (required)
3600601 -58.99728087,2
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3600801 1.5e-5,2.79e-2,2
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3601001 0,2
* jefvcahs (see p.132 of Manual Appendix A); which elements
3601101 0,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3601201 3,1.2e5,319.15,0.,0.,0.,2
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3601300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3601301 0.,0.,0.,1
*
* TCHX Outlet Mixer
* Component name; component type
3610000 TCHXmix2 pipe
* Number of elements
3610001 1
* Volume flow area; which elements
3610101 6.11e-4,1
* Volume length; which elements
3610301 0.33000,1
* Volume azimuthal angle; which elements (optional card)
3610501 0.0,1
* Volume inclination angle; which elements (required)
3610601 -58.99728087,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3610801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3611001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3611201 3,1.2e5,319.15,0.,0.,0.,1
*
* DRACS Cold Leg 1
* Component name; component type
3700000 DRACSc1 pipe
* Number of elements
3700001 16
* Volume flow area; which elements
3700101 6.11e-4,16
* Volume length; which elements
3700301 0.11085,16
* Volume azimuthal angle; which elements (optional card)
3700501 0.0,16
* Volume inclination angle; which elements (required)
3700601 -90.0,16
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3700801 1.5e-5,2.79e-2,16
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3701001 0,16
* jefvcahs (see p.132 of Manual Appendix A); which elements
3701101 0,15
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3701201 3,1.25e5,319.15,0.,0.,0.,16
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3701300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3701301 0.,0.,0.,15
*
* DRACS Flowmeter
* Component name; component type
3710000 DRACSflo pipe
* Number of elements
3710001 1
* Volume flow area; which elements
3710101 6.11e-4,1
* Volume length; which elements
3710301 0.36000,1
* Volume azimuthal angle; which elements (optional card)
3710501 0.0,1
* Volume inclination angle; which elements (required)
3710601 -90.0,1
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3710801 1.5e-5,2.79e-2,1
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3711001 10,1
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3711201 3,1.3e5,319.15,0.,0.,0.,1
*
* DRACS Cold Leg 2
* Component name; component type
3800000 DRACSc2 pipe
* Number of elements
3800001 3
* Volume flow area; which elements
3800101 6.11e-4,3
* Volume length; which elements
3800301 0.11218,3
* Volume azimuthal angle; which elements (optional card)
3800501 0.0,3
* Volume inclination angle; which elements (required)
3800601 -52.41532675,3
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3800801 1.5e-5,2.79e-2,3
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3801001 0,3
* jefvcahs (see p.132 of Manual Appendix A); which elements
3801101 0,2
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3801201 3,1.35e5,319.15,0.,0.,0.,3
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3801300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3801301 0.,0.,0.,2
*
* DRACS Cold Leg 3
* Component name; component type
3900000 DRACSc3 pipe
* Number of elements
3900001 18
* Volume flow area; which elements
3900101 6.11e-4,18
* Volume length; which elements
3900301 0.10619,18
* Volume azimuthal angle; which elements (optional card)
3900501 0.0,18
* Volume inclination angle; which elements (required)
3900601 -80.6488182,18
* Wall roughness; hydraulic diameter; which elements 
* Here for stainless steel: k=0.015mm
3900801 1.5e-5,2.79e-2,18
* tlpvbfe (see p.130 of Manual Appendix A); which elements
3901001 0,18
* jefvcahs (see p.132 of Manual Appendix A); which elements
3901101 0,17
* ebt (initial conditions options); P; T; 0; 0; 0; which elements
3901201 3,1.45e5,319.15,0.,0.,0.,18
* Junction initial conditions control option
* 0 for velocities, 1 for mass flow rates
3901300 1
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0); junction number
3901301 0.,0.,0.,17
*
* Primary Loop Expansion Tank
* Component name; component type
4010000 tank1 tmdpvol
* Volume flow area; volume length; volume volume (calculated if 0);
* Azimuthal angle; inclination angle; elevation change;
* Wall roughness (1e-9 times hydraulic diameter if 0);
* Hydraulic diameter (calculated if 0); tlpvbfe
4010101 1.0 1.0 0.0 0.0 90.0 1.0 0.0 0.0 0
* ebt 
4010200 3
* Search variable (time); P; T
4010201 0.0 101.33e3 320.0
*
* DRACS Loop Expansion Tank
* Component name; component type
4020000 tank2 tmdpvol
* Volume flow area; volume length; volume volume (calculated if 0);
* Azimuthal angle; inclination angle; elevation change;
* Wall roughness (1e-9 times hydraulic diameter if 0);
* Hydraulic diameter (calculated if 0); tlpvbfe
4020101 1.0 1.0 0.0 0.0 90.0 1.0 0.0 0.0 0
* ebt 
4020200 3
* Search variable (time); P; T
4020201 0.0 101.33e3 320.0
*
* Junction 11-10
* Component name; component type
5000000 jn1110 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5000101 11010000 10000000 3.64e-4 3.95 3.95 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5000201 1 0.18 0.18 0.
*
* Junction 10-12
* Component name; component type
5010000 jn1012 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5010101 10010000 12000000 3.64e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5010201 1 0.18 0.18 0.
*
* Junction 12-20
* Component name; component type
5020000 jn1220 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5020101 12010000 20000000 6.11e-4 3.75 3.75 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5020201 1 0.18 0.18 0.
*
* Junction 20-21
* Component name; component type
5030000 jn2021 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5030101 20010000 21000000 6.11e-4 22.8 22.8 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5030111 4000. 1. 4000. 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5030201 1 0.18 0.18 0.
*
* Junction 21-30
* Component name; component type
5040000 jn2130 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5040101 21010000 30000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5040201 1 0.18 0.18 0.
*
* Junction 30-40
* Component name; component type
5050000 jn3040 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5050101 30010000 40000000 6.11e-4 12. 12. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5050201 1 0.18 0.18 0.
*
* Junction 60-61
* Component name; component type
5060000 jn6061 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5060101 60010000 61000000 6.11e-4 26.05 26.05 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5060111 4000. 1. 4000. 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5060201 1 0.18 0.18 0.
*
* Junction 61-71
* Component name; component type
5070000 jn6171 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5070101 61010000 71000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5070201 1 0.18 0.18 0.
*
* Junction 71-72
* Component name; component type
5080000 jn7172 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5080101 71010000 72000000 1.33e-3 391.4 391.4 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5080111 57202.3 1. 57202.3 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5080201 1 0.18 0.18 0.
*
* Junction 72-81
* Component name; component type
5090000 jn7281 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5090101 72010000 81000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5090201 1 0.18 0.18 0.
*
* Junction 81-80
* Component name; component type
5100000 jn8180 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5100101 81010000 80000000 6.11e-4 24.75 24.75 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5100111 4000. 1. 4000. 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5100201 1 0.18 0.18 0.
*
* Junction 80-90
* Component name; component type
5110000 jn8090 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5110101 80010000 90000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5110201 1 0.18 0.18 0.
*
* Junction 90-100
* Component name; component type
5120000 jn90100 valve
* From; to; junction area; A_f; A_r; jefvcahs
5120101 90010000 100000000 6.11e-4 0.8 0.8 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5120201 1 0.18 0.18 0.
* Valve type
5120300 trpvlv
* Trip number (false = closed; true = open)
5120301 402
*
* Junction 100-110
* Component name; component type
5130000 jn100110 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5130101 100010000 110000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5130201 1 0.18 0.18 0.
*
* Junction 110-120
* Component name; component type
5140000 jn110120 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5140101 110010000 120000000 6.11e-4 13.23 13.23 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5140201 1 0.18 0.18 0.
*
* Junction 120-130
* Component name; component type
5150000 jn120130 tmdpjun
* From; to; junction area; A_f; A_r; jefvcahs
5150101 120010000 130000000 6.11e-4 0
* Control word (0 for velocities, 1 for mass flow rates)
5150200 1
* Time; Liquid velocity; Gas velocity;
* Interface velocity (enter 0.0)
5150201 0.0000 0.18 0. 0.
5150202 3000.0 0.18 0. 0.
5150203 3048.0 0.18 0. 0.
5150204 3060.0 0.0  0. 0. 
*
* Junction 130-140
* Component name; component type
5160000 jn130140 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5160101 130010000 140000000 6.11e-4 23.78 23.78 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5160201 1 0.18 0.18 0.
*
* Junction 140-141
* Component name; component type
5170000 jn140141 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5170101 140010000 141000000 6.11e-4 2.4 2.4 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5170201 1 0.18 0.18 0.
*
* Junction 141-150
* Component name; component type
5180000 jn141150 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5180101 141010000 150000000 6.11e-4 18.1 18.1 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5180111 93006.9 1.3476 93006.9 1.3476
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5180201 1 0.18 0.18 0.
*
* Junction 150-160
* Component name; component type
5190000 jn150160 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5190101 150010000 160000000 6.11e-4 0.8 0.8 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5190201 1 0.18 0.18 0.
*
* Junction 180-11
* Component name; component type
5200000 jn18011 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5200101 180010000 11000000 6.11e-4 5.15 5.15 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5200201 1 0.18 0.18 0.
*
* Junction 190-200
* Component name; component type
5210000 jn190200 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5210101 190010000 200000000 6.11e-4 7.5 7.5 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5210201 1 0.018 0.018 0.
*
* Junction 200-210
* Component name; component type
5220000 jn200210 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5220101 200010000 210000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5220201 1 0.018 0.018 0.
*
* Junction 210-211
* Component name; component type
5230000 jn210211 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5230101 210010000 211000000 6.11e-4 4.4 4.4 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5230201 1 0.018 0.018 0.
*
* Junction 211-220
* Component name; component type
5240000 jn211220 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5240101 211010000 220000000 6.11e-4 18.1 18.1 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5240111 93006.9 1.3476 93006.9 1.3476
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5240201 1 0.018 0.018 0.
*
* Junction 222-224 (V-20)
* Component name; component type
5250000 jn220221 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5250101 222010000 224000000 6.11e-4 5261. 5261. 000001
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5250201 1 0.018 0.018 0.
*
* Junction 223-225 (V-21)
* Component name; component type
5600000 jn220222 valve
* From; to; junction area; A_f; A_r; jefvcahs
5600101 223010000 225000000 6.11e-4 36. 36. 000001
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5600201 1 0.018 0.018 0.
* Valve type (check valve)
5600300 trpvlv
* Initial conditions 
5600301 403
*5600301 0 1 3447.38 
*
* Junction 221-231
* Component name; component type
*5610000 jn221231 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
*5610101 221010000 231000000 6.11e-4 0. 0. 000001
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
*5610201 1 0.018 0.018 0.
*
* Junction 222-231
* Component name; component type
*5620000 jn222231 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
*5620101 222010000 231000000 6.11e-4 0. 0. 000001
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
*5620201 1 0.0 0.0 0.
*
* Junction 231-230
* Component name; component type
5260000 jn231230 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5260101 231010000 230000000 6.11e-4 22.35 22.35 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5260111 4000. 1. 4000. 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5260201 1 0.018 0.018 0.
*
* Junction 230-240
* Component name; component type
5270000 jn230240 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5270101 230010000 240000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5270201 1 0.018 0.018 0.
*
* Junction 240-250
* Component name; component type
5280000 jn240250 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5280101 240010000 250000000 6.11e-4 23.9 23.9 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5280201 1 0.018 0.018 0.
*
* Junction 250-251
* Component name; component type
5290000 jn250251 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5290101 250010000 251000000 6.11e-4 22.35 22.35 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5290111 4000. 1. 4000. 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5290201 1 0.018 0.018 0.
*
* Junction 251-260
* Component name; component type
5300000 jn251260 valve
* From; to; junction area; A_f; A_r; jefvcahs
5300101 251010000 260000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5300201 1 0.018 0.018 0.
* Valve type
5300300 trpvlv
* Trip number (false = closed; true = open)
5300301 401
*
* Junction 301-300
* Component name; component type
5310000 jn301300 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5310101 301010000 300000000 7.18e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5310201 1 0.022 0.022 0.
*
* Junction 300-302
* Component name; component type
5320000 jn300302 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5320101 300010000 302000000 7.18e-4 3.3 3.3 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5320201 1 0.022 0.022 0.
*
* Junction 302-310
* Component name; component type
5330000 jn302310 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5330101 302010000 310000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5330201 1 0.022 0.022 0.
*
* Junction 310-311
* Component name; component type
5340000 jn310311 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5340101 310010000 311000000 6.11e-4 22.35 22.35 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5340111 4000. 1. 4000. 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5340201 1 0.022 0.022 0.
*
* Junction 311-320
* Component name; component type
5350000 jn311320 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5350101 311010000 320000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5350201 1 0.022 0.022 0.
*
* Junction 320-330
* Component name; component type
5360000 jn320330 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5360101 320010000 330000000 6.11e-4 0.8 0.8 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5360201 1 0.022 0.022 0.
*
* Junction 351-352
* Component name; component type
5370000 jn351352 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5370101 351010000 352000000 1.33e-3 442.74 442.74 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5370111 48022.3 1. 48022.3 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5370201 1 0.022 0.022 0.
*
* Junction 352-360
* Component name; component type
5380000 jn352360 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5380101 352010000 360000000 6.11e-4 5.8 5.8 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5380201 1 0.022 0.022 0.
*
* Junction 360-361
* Component name; component type
5390000 jn360361 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5390101 360010000 361000000 6.11e-4 24.75 24.75 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5390111 4000. 1. 4000. 1.
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5390201 1 0.022 0.022 0.
*
* Junction 361-370
* Component name; component type
5400000 jn361370 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5400101 361010000 370000000 6.11e-4 0. 0. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5400201 1 0.022 0.022 0.
*
* Junction 370-371
* Component name; component type
5410000 jn370371 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5410101 370010000 371000000 6.11e-4 12. 12. 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5410201 1 0.022 0.022 0.
*
* Junction 371-380
* Component name; component type
5420000 jn371380 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5420101 371010000 380000000 6.11e-4 18.1 18.1 0
* User-specified form loss coefficients: B_f; C_f; B_r; C_r
5420111 93006.9 1.3476 93006.9 1.3476
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5420201 1 0.022 0.022 0.
*
* Junction 380-390
* Component name; component type
5430000 jn380390 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5430101 380010000 390000000 6.11e-4 0.8 0.8 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5430201 1 0.022 0.022 0.
*
* Junction 390-301
* Component name; component type
5440000 jn390301 sngljun
* From; to; junction area; A_f; A_r; jefvcahs
5440101 390010000 301000000 6.11e-4 2.65 2.65 0
* Control word (0 for velocities, 1 for mass flow rates)
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
5440201 1 0.022 0.022 0.
*
* Branch 5
* Component name; component type
500000 branch5 branch
* Number of junctions; control word (0: velocities, 1: mass flow rates)
500001 4 1
* Volume flow area; volume length; volume of volume (calculated if 0.0)
* Azimuthal angle; vertical angle; elevation change; wall roughness
* Hydraulic diameter; tlpvbfe
500101 6.11e-4 0.74930 0. 0. 0. 0. 1.5e-5 2.79e-2 0
* ebt (initial conditions options); P; T
500200 3 1.1e5 325.0
* From; to; junction area; A_f; A_r; jefvcahs
501101  40010000  50000000 6.11e-4 2.4 2.4 0
502101  50010000  60000000 6.11e-4 0. 0. 0
503101  50010000 401000000 6.11e-4 0. 0. 100
504101 260010000  50000000 6.11e-4 1.75 1.75 0
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
501201  0.18  0.18 0.
502201  0.18  0.18 0.
503201  0.000 0.000 0.
504201  0.018 0.018 0.
*
* Branch 17
* Component name; component type
1700000 branch17 branch
* Number of junctions; control word (0: velocities, 1: mass flow rates)
1700001 3 1
* Volume flow area; volume length; volume of volume (calculated if 0.0)
* Azimuthal angle; vertical angle; elevation change; wall roughness
* Hydraulic diameter; tlpvbfe
1700101 6.11e-4 0.47308 0. 0. 0. 0. 1.5e-5 2.79e-2 0
* ebt (initial conditions options); P; T
1700200 3 1.4e5 325.0
* From; to; junction area; A_f; A_r; jefvcahs
1701101  160010000  170000000 6.11e-4 1.9 1.9 0
1702101  170010000  180000000 6.11e-4 0. 0. 0
1703101  170010000  190000000 6.11e-4 0. 0. 0
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
1701201  0.18  0.18 0.
1702201  0.18  0.18 0.
1703201 0.018 0.018 0.
*
* Branch 34
* Component name; component type
3400000 branch34 branch
* Number of junctions; control word (0: velocities, 1: mass flow rates)
3400001 3 1
* Volume flow area; volume length; volume of volume (calculated if 0.0)
* Azimuthal angle; vertical angle; elevation change; wall roughness
* Hydraulic diameter; tlpvbfe
3400101 6.11e-4 0.55245 0. 0. 0. 0. 1.5e-5 2.79e-2 0
* ebt (initial conditions options); P; T
3400200 3 1.15e5 325.0
* From; to; junction area; A_f; A_r; jefvcahs
3401101  330010000  340000000 6.11e-4 2.75 2.75 0
3402101  340000000  402000000 6.11e-4 0. 0. 100
3403101  340010000  351000000 6.11e-4 4.25 4.25 0
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
3401201  0.220  0.220 0.
3402201  0.000  0.000 0.
3403201  0.220  0.220 0.
*
* Branch 22a
* Component name; component type
2210000 branch22 branch
* Number of junctions; control word (0: velocities, 1: mass flow rates)
2210001 3 1
* Volume flow area; volume length; volume of volume (calculated if 0.0)
* Azimuthal angle; vertical angle; elevation change; wall roughness
* Hydraulic diameter; tlpvbfe
2210101 6.11e-4 0.11536 0. 0. 90. 0.11536 1.5e-5 2.79e-2 0
* ebt (initial conditions options); P; T
2210200 3 1.3e5 348.15
* From; to; junction area; A_f; A_r; jefvcahs
2211101  220010000  221000000 6.11e-4 0. 0. 0
2212101  221010000  222000000 6.11e-4 0. 0. 0
2213101  221010000  223000000 6.11e-4 0. 0. 0
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
2211201  0.018  0.018 0.
2212201  0.018  0.018 0.
2213201  0.000  0.000 0.
*
* Branch 23a
* Component name; component type
2310000 branch23 branch
* Number of junctions; control word (0: velocities, 1: mass flow rates)
2310001 3 1
* Volume flow area; volume length; volume of volume (calculated if 0.0)
* Azimuthal angle; vertical angle; elevation change; wall roughness
* Hydraulic diameter; tlpvbfe
2310101 6.11e-4 0.33 0. 0. 90. 0.33 1.5e-5 2.79e-2 10
* ebt (initial conditions options); P; T
2310200 3 1.25e5 348.15
* From; to; junction area; A_f; A_r; jefvcahs
2311101  224010000  231000000 6.11e-4 0. 0. 0
2312101  225010000  231000000 6.11e-4 0. 0. 0
2313101  231010000  230000000 6.11e-4 0. 0. 0
* Initial liquid velocity; initial gas velocity;
* Interface velocity (enter 0.0)
2311201  0.018  0.018 0.
2312201  0.000  0.000 0.
2313201  0.018  0.018 0.
*
***********************************************************
* Heat structures
***********************************************************
*
* Bottom of heater outer tube
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10111000 2 7 2 1 1.92e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10111100 0 2
* Mesh interval distance; interval number
10111101 9.525e-4 2
10111102 1.270e-2 6
* Composition (table number); interval number
10111201 100 2
10111202 120 6
* Power input proportion; mesh interval number
10111301 1.0 2
10111302 0.0 6
* Initial temperature; mesh point number
10111401 325.0  3
10111402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10111501 11010000 10000 101 1 0.47828 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10111601 -30 0 1000 1 0.47828 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10111701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10111801 1.21e-2 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* Bottom of heater inner tube
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10112000 2 3 2 1 1.33e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10112100 0 1
* Number of intervals; right coordinate
10112101 2 1.59e-2
* Composition (table number); interval number
10112201 100 2
* Power input proportion; mesh interval number
10112301 1.0 2
* Initial temperature; mesh point number
10112401 325.0 3
* Left boundary condition definition (0: adiabatic); increment;
* Boundary condition type (0: adiabatic); surface area code (1: length);
* Length; heat structure number
10112501 0 0 0 1 0.47828 2
* Right boundary condition, see above (101: convection)
10112601 11010000 10000 101 1 0.47828 2
* Power source (no source); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10112701 0 0.0 0.0 0.0 2
* Additional right boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10112901 1.46e-2 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* Heater outer tube
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10101000 15 3 2 1 1.92e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10101100 0 2
* Mesh interval distance; interval number
10101101 9.525e-4 2
* Composition (table number); interval number
10101201 100 2
* Power input proportion; mesh interval number
10101301 1.0 2
* Initial temperature; mesh point number
10101401 325.0  3
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10101501 10010000 10000 101 1 0.10922 15
* Right boundary condition, see above (0: adiabatic)
10101601 0 0 0 1 0.10922 15
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10101701 10 0.066666667 0.0 0.0 15
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10101801 1.21e-2 10.0 10.0 0.0 0.0 0.0 0.0 1.0 15
*
* Heater inner tube
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10102000 15 3 2 1 1.33e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10102100 0 1
* Number of intervals; right coordinate
10102101 2 1.59e-2
* Composition (table number); interval number
10102201 100 2
* Power input proportion; mesh interval number
10102301 1.0 2
* Initial temperature; mesh point number
10102401 325.0 3
* Left boundary condition definition (0: adiabatic); increment;
* Boundary condition type (0: adiabatic); surface area code (1: length);
* Length; heat structure number
10102501 0 0 0 1 0.10922 15
* Right boundary condition, see above (101: convection)
10102601 10010000 10000 101 1 0.10922 15
* Power source (no source); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10102701 0 0.0 0.0 0.0 15
* Additional right boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10102901 1.46e-2 10.0 10.0 0.0 0.0 0.0 0.0 1.0 15
*
* Top of heater outer tube
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10121000 1 7 2 1 1.92e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10121100 0 2
* Mesh interval distance; interval number
10121101 9.525e-4 2
10121102 1.270e-2 6
* Composition (table number); interval number
10121201 100 2
10121202 120 6
* Power input proportion; mesh interval number
10121301 1.0 2
10121302 0.0 6
* Initial temperature; mesh point number
10121401 325.0  3
10121402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10121501 12010000 10000 101 1 0.40561 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10121601 -30 0 1000 1 0.40561 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10121701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10121801 1.21e-2 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* Top of heater inner tube
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10122000 1 3 2 1 1.33e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10122100 0 1
* Number of intervals; right coordinate
10122101 2 1.59e-2
* Composition (table number); interval number
10122201 100 2
* Power input proportion; mesh interval number
10122301 1.0 2
* Initial temperature; mesh point number
10122401 325.0 3
* Left boundary condition definition (0: adiabatic); increment;
* Boundary condition type (0: adiabatic); surface area code (1: length);
* Length; heat structure number
10122501 0 0 0 1 0.40561 1
* Right boundary condition, see above (101: convection)
10122601 12010000 10000 101 1 0.40561 1
* Power source (no source); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10122701 0 0.0 0.0 0.0 1
* Additional right boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10122901 1.46e-2 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* Heater mixer pipe
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10201000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10201100 0 2
* Mesh interval distance; interval number
10201101 5.426e-4 2
10201102 1.270e-2 6
* Composition (table number); interval number
10201201 100 2
10201202 120 6
* Power input proportion; mesh interval number
10201301 1.0 2
10201302 0.0 6
* Initial temperature; mesh point number
10201401 325.0  3
10201402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10201501 20010000 10000 101 1 1.01674 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10201601 -30 0 1000 1 1.01674 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10201701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10201801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* Heater mixer
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10211000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10211100 0 2
* Mesh interval distance; interval number
10211101 5.426e-4 2
10211102 1.270e-2 6
* Composition (table number); interval number
10211201 100 2
10211202 120 6
* Power input proportion; mesh interval number
10211301 1.0 2
10211302 0.0 6
* Initial temperature; mesh point number
10211401 325.0  3
10211402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10211501 21010000 10000 101 1 2.24537 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10211601 -30 0 1000 1 2.24537 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10211701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10211801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* Hot leg 1
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10301000 12 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10301100 0 2
* Mesh interval distance; interval number
10301101 5.426e-4 2
10301102 1.270e-2 6
* Composition (table number); interval number
10301201 100 2
10301202 120 6
* Power input proportion; mesh interval number
10301301 1.0 2
10301302 0.0 6
* Initial temperature; mesh point number
10301401 325.0  3
10301402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10301501 30010000 10000 101 1 0.72730 12
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10301601 -30 0 1000 1 0.72730 12
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10301701 0 0.0 0.0 0.0 12
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10301801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 12
*
* Hot leg 2
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10401000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10401100 0 2
* Mesh interval distance; interval number
10401101 5.426e-4 2
10401102 1.270e-2 6
* Composition (table number); interval number
10401201 100 2
10401202 120 6
* Power input proportion; mesh interval number
10401301 1.0 2
10401302 0.0 6
* Initial temperature; mesh point number
10401401 325.0  3
10401402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10401501 40010000 10000 101 1 0.82093 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10401601 -30 0 1000 1 0.82093 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10401701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10401801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* Branch 5
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10501000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10501100 0 2
* Mesh interval distance; interval number
10501101 5.426e-4 2
10501102 1.270e-2 6
* Composition (table number); interval number
10501201 100 2
10501202 120 6
* Power input proportion; mesh interval number
10501301 1.0 2
10501302 0.0 6
* Initial temperature; mesh point number
10501401 325.0  3
10501402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10501501 50010000 10000 101 1 5.09834 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10501601 -30 0 1000 1 5.09834 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10501701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10501801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* CTAH inlet mixer pipe
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10601000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10601100 0 2
* Mesh interval distance; interval number
10601101 5.426e-4 2
10601102 1.270e-2 6
* Composition (table number); interval number
10601201 100 2
10601202 120 6
* Power input proportion; mesh interval number
10601301 1.0 2
10601302 0.0 6
* Initial temperature; mesh point number
10601401 325.0  3
10601402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10601501 60010000 10000 101 1 1.03832 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10601601 -30 0 1000 1 1.03832 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10601701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10601801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* CTAH inlet mixer
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10611000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10611100 0 2
* Mesh interval distance; interval number
10611101 5.426e-4 2
10611102 1.270e-2 6
* Composition (table number); interval number
10611201 100 2
10611202 120 6
* Power input proportion; mesh interval number
10611301 1.0 2
10611302 0.0 6
* Initial temperature; mesh point number
10611401 325.0  3
10611402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10611501 61010000 10000 101 1 2.24536 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10611601 -30 0 1000 1 2.24536 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10611701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10611801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* CTAH 1
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10711000 3 5 2 1 5.95e-3 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10711100 0 2
* Mesh interval distance; interval number
10711101 4.00e-4 4
* Composition (table number); interval number
10711201 110 4
* Power input proportion; mesh interval number
10711301 1.0 4
* Initial temperature; mesh point number
10711401 325.0  5
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (3060: HTC set in general table 60); surface area code (1: length);
* Length; heat structure number
10711501 71010000 10000 3060 1 0.11007 3
* Right boundary condition, see above (-40: T defined in general table 40; 1000: T set in Word 1)
10711601 -40 0 1000 1 0.11007 3
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10711701 0 0.0 0.0 0.0 3
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10711801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 3
*
* CTAH 2
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10721000 11 5 2 1 5.95e-3 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10721100 0 2
* Mesh interval distance; interval number
10721101 4.00e-4 4
* Composition (table number); interval number
10721201 110 4
* Power input proportion; mesh interval number
10721301 1.0 4
* Initial temperature; mesh point number
10721401 325.0  5
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (3060: HTC set in general table 60); surface area code (1: length);
* Length; heat structure number
10721501 72010000 10000 3060 1 0.11220 11
* Right boundary condition, see above (-40: T defined in general table 40; 1000: T set in Word 1)
10721601 -40 0 1000 1 0.11220 11
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10721701 0 0.0 0.0 0.0 11
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10721801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 11
*
* CTAH outlet mixer pipe
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10801000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10801100 0 2
* Mesh interval distance; interval number
10801101 1.384e-3 2
10801102 9.525e-3 6
* Composition (table number); interval number
10801201 100 2
10801202 120 6
* Power input proportion; mesh interval number
10801301 1.0 2
10801302 0.0 6
* Initial temperature; mesh point number
10801401 325.0  3
10801402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10801501 80010000 10000 101 1 0.41528 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10801601 -30 0 1000 1 0.41528 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10801701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10801801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* CTAH outlet mixer
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10811000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10811100 0 2
* Mesh interval distance; interval number
10811101 1.384e-3 2
10811102 9.525e-3 6
* Composition (table number); interval number
10811201 100 2
10811202 120 6
* Power input proportion; mesh interval number
10811301 1.0 2
10811302 0.0 6
* Initial temperature; mesh point number
10811401 325.0  3
10811402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10811501 81010000 10000 101 1 1.23206 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10811601 -30 0 1000 1 1.23206 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10811701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10811801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* Cold leg 1
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
10901000 7 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
10901100 0 2
* Mesh interval distance; interval number
10901101 1.384e-3 2
10901102 9.525e-3 6
* Composition (table number); interval number
10901201 100 2
10901202 120 6
* Power input proportion; mesh interval number
10901301 1.0 2
10901302 0.0 6
* Initial temperature; mesh point number
10901401 325.0  3
10901402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
10901501 90010000 10000 101 1 0.37933 7
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
10901601 -30 0 1000 1 0.37933 7
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
10901701 0 0.0 0.0 0.0 7
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
10901801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 7
*
* Cold leg 2
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11001000 22 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11001100 0 2
* Mesh interval distance; interval number
11001101 1.384e-3 2
11001102 9.525e-3 6
* Composition (table number); interval number
11001201 100 2
11001202 120 6
* Power input proportion; mesh interval number
11001301 1.0 2
11001302 0.0 6
* Initial temperature; mesh point number
11001401 325.0  3
11001402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11001501 100010000 10000 101 1 0.41595 22
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11001601 -30 0 1000 1 0.41595 22
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11001701 0 0.0 0.0 0.0 22
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11001801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 22
*
* Cold leg 3
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11101000 4 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11101100 0 2
* Mesh interval distance; interval number
11101101 1.384e-3 2
11101102 9.525e-3 6
* Composition (table number); interval number
11101201 100 2
11101202 120 6
* Power input proportion; mesh interval number
11101301 1.0 2
11101302 0.0 6
* Initial temperature; mesh point number
11101401 325.0  3
11101402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11101501 110010000 10000 101 1 0.45045 4
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11101601 -30 0 1000 1 0.45045 4
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11101701 0 0.0 0.0 0.0 4
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11101801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 4
*
* Pump suction
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11201000 3 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11201100 0 2
* Mesh interval distance; interval number
11201101 1.384e-3 2
11201102 1.270e-2 6
* Composition (table number); interval number
11201201 100 2
11201202 120 6
* Power input proportion; mesh interval number
11201301 1.0 2
11201302 0.0 6
* Initial temperature; mesh point number
11201401 325.0  3
11201402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11201501 120010000 10000 101 1 0.41491 3
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11201601 -30 0 1000 1 0.41491 3
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11201701 0 0.0 0.0 0.0 3
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11201801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 3
*
* Pump discharge
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11301000 12 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11301100 0 2
* Mesh interval distance; interval number
11301101 1.384e-3 2
11301102 1.270e-2 6
* Composition (table number); interval number
11301201 100 2
11301202 120 6
* Power input proportion; mesh interval number
11301301 1.0 2
11301302 0.0 6
* Initial temperature; mesh point number
11301401 325.0  3
11301402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11301501 130010000 10000 101 1 0.39612 12
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11301601 -30 0 1000 1 0.39612 12
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11301701 0 0.0 0.0 0.0 12
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11301801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 12
*
* Cold leg 4
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11401000 6 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11401100 0 2
* Mesh interval distance; interval number
11401101 1.384e-3 2
11401102 1.270e-2 6
* Composition (table number); interval number
11401201 100 2
11401202 120 6
* Power input proportion; mesh interval number
11401301 1.0 2
11401302 0.0 6
* Initial temperature; mesh point number
11401401 325.0  3
11401402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11401501 140010000 10000 101 1 0.41610 6
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11401601 -30 0 1000 1 0.41610 6
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11401701 0 0.0 0.0 0.0 6
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11401801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 6
*
* CTAH flowmeter
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11411000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11411100 0 2
* Mesh interval distance; interval number
11411101 1.384e-3 2
11411102 1.270e-2 6
* Composition (table number); interval number
11411201 100 2
11411202 120 6
* Power input proportion; mesh interval number
11411301 1.0 2
11411302 0.0 6
* Initial temperature; mesh point number
11411401 325.0  3
11411402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11411501 141010000 10000 101 1 1.34407 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11411601 -30 0 1000 1 1.34407 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11411701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11411801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* Cold leg 5
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11501000 3 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11501100 0 2
* Mesh interval distance; interval number
11501101 1.384e-3 2
11501102 1.270e-2 6
* Composition (table number); interval number
11501201 100 2
11501202 120 6
* Power input proportion; mesh interval number
11501301 1.0 2
11501302 0.0 6
* Initial temperature; mesh point number
11501401 325.0  3
11501402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11501501 150010000 10000 101 1 0.44253 3
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11501601 -30 0 1000 1 0.44253 3
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11501701 0 0.0 0.0 0.0 3
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11501801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 3
*
* Cold leg 6
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11601000 6 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11601100 0 2
* Mesh interval distance; interval number
11601101 1.384e-3 2
11601102 1.270e-2 6
* Composition (table number); interval number
11601201 100 2
11601202 120 6
* Power input proportion; mesh interval number
11601301 1.0 2
11601302 0.0 6
* Initial temperature; mesh point number
11601401 325.0  3
11601402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11601501 160010000 10000 101 1 0.40106 6
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11601601 -30 0 1000 1 0.40106 6
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11601701 0 0.0 0.0 0.0 6
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11601801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 6
*
* Branch 17
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11701000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11701100 0 2
* Mesh interval distance; interval number
11701101 1.384e-3 2
11701102 1.270e-2 6
* Composition (table number); interval number
11701201 100 2
11701202 120 6
* Power input proportion; mesh interval number
11701301 1.0 2
11701302 0.0 6
* Initial temperature; mesh point number
11701401 325.0  3
11701402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11701501 170010000 10000 101 1 1.76625 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11701601 -30 0 1000 1 1.76625 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11701701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11701801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* Cold leg 7
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11801000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11801100 0 2
* Mesh interval distance; interval number
11801101 1.384e-3 2
11801102 1.270e-2 6
* Composition (table number); interval number
11801201 100 2
11801202 120 6
* Power input proportion; mesh interval number
11801301 1.0 2
11801302 0.0 6
* Initial temperature; mesh point number
11801401 325.0  3
11801402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11801501 180010000 10000 101 1 0.66382 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11801601 -30 0 1000 1 0.66382 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11801701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11801801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX leg 1
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
11901000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
11901100 0 2
* Mesh interval distance; interval number
11901101 1.384e-3 2
11901102 1.270e-2 6
* Composition (table number); interval number
11901201 100 2
11901202 120 6
* Power input proportion; mesh interval number
11901301 1.0 2
11901302 0.0 6
* Initial temperature; mesh point number
11901401 325.0  3
11901402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
11901501 190010000 10000 101 1 0.53227 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
11901601 -30 0 1000 1 0.53227 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
11901701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
11901801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* DHX leg 2
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12001000 3 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12001100 0 2
* Mesh interval distance; interval number
12001101 1.384e-3 2
12001102 1.270e-2 6
* Composition (table number); interval number
12001201 100 2
12001202 120 6
* Power input proportion; mesh interval number
12001301 1.0 2
12001302 0.0 6
* Initial temperature; mesh point number
12001401 325.0  3
12001402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12001501 200010000 10000 101 1 0.54510 3
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12001601 -30 0 1000 1 0.54510 3
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12001701 0 0.0 0.0 0.0 3
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12001801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 3
*
* DHX leg 3
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12101000 4 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12101100 0 2
* Mesh interval distance; interval number
12101101 1.384e-3 2
12101102 1.270e-2 6
* Composition (table number); interval number
12101201 100 2
12101202 120 6
* Power input proportion; mesh interval number
12101301 1.0 2
12101302 0.0 6
* Initial temperature; mesh point number
12101401 325.0  3
12101402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12101501 210010000 10000 101 1 0.59247 4
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12101601 -30 0 1000 1 0.59247 4
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12101701 0 0.0 0.0 0.0 4
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12101801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 4
*
* DHX flowmeter
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12111000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12111100 0 2
* Mesh interval distance; interval number
12111101 1.384e-3 2
12111102 1.270e-2 6
* Composition (table number); interval number
12111201 100 2
12111202 120 6
* Power input proportion; mesh interval number
12111301 1.0 2
12111302 0.0 6
* Initial temperature; mesh point number
12111401 325.0  3
12111402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12111501 211010000 10000 101 1 1.74929 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12111601 -30 0 1000 1 1.74929 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12111701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12111801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX leg 4
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12201000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12201100 0 2
* Mesh interval distance; interval number
12201101 1.384e-3 2
12201102 1.270e-2 6
* Composition (table number); interval number
12201201 100 2
12201202 120 6
* Power input proportion; mesh interval number
12201301 1.0 2
12201302 0.0 6
* Initial temperature; mesh point number
12201401 325.0  3
12201402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12201501 220010000 10000 101 1 0.56055 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12201601 -30 0 1000 1 0.56055 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12201701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12201801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* DHX leg 4a
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12211000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12211100 0 2
* Mesh interval distance; interval number
12211101 1.384e-3 2
12211102 1.270e-2 6
* Composition (table number); interval number
12211201 100 2
12211202 120 6
* Power input proportion; mesh interval number
12211301 1.0 2
12211302 0.0 6
* Initial temperature; mesh point number
12211401 325.0  3
12211402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12211501 220010000 10000 101 1 0.56055 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12211601 -30 0 1000 1 0.56055 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12211701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12211801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX leg 4b
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12221000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12221100 0 2
* Mesh interval distance; interval number
12221101 1.384e-3 2
12221102 1.270e-2 6
* Composition (table number); interval number
12221201 100 2
12221202 120 6
* Power input proportion; mesh interval number
12221301 1.0 2
12221302 0.0 6
* Initial temperature; mesh point number
12221401 325.0  3
12221402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12221501 220010000 10000 101 1 0.56055 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12221601 -30 0 1000 1 0.56055 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12221701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12221801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX leg 4c
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12231000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12231100 0 2
* Mesh interval distance; interval number
12231101 1.384e-3 2
12231102 1.270e-2 6
* Composition (table number); interval number
12231201 100 2
12231202 120 6
* Power input proportion; mesh interval number
12231301 1.0 2
12231302 0.0 6
* Initial temperature; mesh point number
12231401 325.0  3
12231402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12231501 220010000 10000 101 1 0.56055 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12231601 -30 0 1000 1 0.56055 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12231701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12231801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX leg 4d
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12241000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12241100 0 2
* Mesh interval distance; interval number
12241101 1.384e-3 2
12241102 1.270e-2 6
* Composition (table number); interval number
12241201 100 2
12241202 120 6
* Power input proportion; mesh interval number
12241301 1.0 2
12241302 0.0 6
* Initial temperature; mesh point number
12241401 325.0  3
12241402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12241501 220010000 10000 101 1 0.56055 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12241601 -30 0 1000 1 0.56055 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12241701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12241801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* DHX leg 4e
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12251000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12251100 0 2
* Mesh interval distance; interval number
12251101 1.384e-3 2
12251102 1.270e-2 6
* Composition (table number); interval number
12251201 100 2
12251202 120 6
* Power input proportion; mesh interval number
12251301 1.0 2
12251302 0.0 6
* Initial temperature; mesh point number
12251401 325.0  3
12251402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12251501 220010000 10000 101 1 0.56055 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12251601 -30 0 1000 1 0.56055 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12251701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12251801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* DHX outlet mixer pipe
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12301000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12301100 0 2
* Mesh interval distance; interval number
12301101 1.384e-3 2
12301102 1.270e-2 6
* Composition (table number); interval number
12301201 100 2
12301202 120 6
* Power input proportion; mesh interval number
12301301 1.0 2
12301302 0.0 6
* Initial temperature; mesh point number
12301401 325.0  3
12301402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12301501 230010000 10000 101 1 0.43295 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12301601 -30 0 1000 1 0.43295 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12301701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12301801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX outlet mixer
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12311000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12311100 0 2
* Mesh interval distance; interval number
12311101 1.384e-3 2
12311102 1.270e-2 6
* Composition (table number); interval number
12311201 100 2
12311202 120 6
* Power input proportion; mesh interval number
12311301 1.0 2
12311302 0.0 6
* Initial temperature; mesh point number
12311401 325.0  3
12311402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12311501 231010000 10000 101 1 1.60351 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12311601 -30 0 1000 1 1.60351 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12311701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12311801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX shell
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12401000 11 7 2 1 2.54e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12401100 0 2
* Mesh interval distance; interval number
12401101 8.000e-4 2
12401102 1.270e-2 6
* Composition (table number); interval number
12401201 110 2
12401202 120 6
* Power input proportion; mesh interval number
12401301 1.0 2
12401302 0.0 6
* Initial temperature; mesh point number
12401401 325.0  3
12401402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12401501 240010000 10000 101 1 0.75129 11
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12401601 -30 0 1000 1 0.75129 11
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12401701 0 0.0 0.0 0.0 11
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12401801 2.36e-2 10.0 10.0 0.0 0.0 0.0 0.0 1.0 11
*
* DHX inlet mixer pipe
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12501000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12501100 0 2
* Mesh interval distance; interval number
12501101 1.384e-3 2
12501102 1.270e-2 6
* Composition (table number); interval number
12501201 100 2
12501202 120 6
* Power input proportion; mesh interval number
12501301 1.0 2
12501302 0.0 6
* Initial temperature; mesh point number
12501401 325.0  3
12501402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12501501 250010000 10000 101 1 0.50749 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12501601 -30 0 1000 1 0.50749 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12501701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12501801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* DHX inlet mixer
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12511000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12511100 0 2
* Mesh interval distance; interval number
12511101 1.384e-3 2
12511102 1.270e-2 6
* Composition (table number); interval number
12511201 100 2
12511202 120 6
* Power input proportion; mesh interval number
12511301 1.0 2
12511302 0.0 6
* Initial temperature; mesh point number
12511401 325.0  3
12511402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12511501 251010000 10000 101 1 1.50563 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12511601 -30 0 1000 1 1.50563 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12511701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12511801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX leg 5
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
12601000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
12601100 0 2
* Mesh interval distance; interval number
12601101 1.384e-3 2
12601102 1.270e-2 6
* Composition (table number); interval number
12601201 100 2
12601202 120 6
* Power input proportion; mesh interval number
12601301 1.0 2
12601302 0.0 6
* Initial temperature; mesh point number
12601401 325.0  3
12601402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
12601501 260010000 10000 101 1 0.49252 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
12601601 -30 0 1000 1 0.49252 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
12601701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
12601801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* DHX tubes
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13001000 11 5 2 1 3.47e-3 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13001100 0 2
* Mesh interval distance; interval number
13001101 2.00025e-4 4
* Composition (table number); interval number
13001201 110 4
* Power input proportion; mesh interval number
13001301 1.0 4
* Initial temperature; mesh point number
13001401 325.0  5
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13001501 300010000 10000 101 1 1.17203 11
* Right boundary condition, see above
13001601 240010000 10000 101 1 1.17203 11
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13001701 0 0.0 0.0 0.0 11
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13001801 6.93e-3 10.0 10.0 0.0 0.0 0.0 0.0 1.0 11
* Additional right boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13001901 7.42e-3 10.0 10.0 0.0 0.0 0.0 0.0 1.0 11
*
* DHX outlet mixer pipe (DRACS loop)
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13101000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13101100 0 2
* Mesh interval distance; interval number
13101101 1.384e-3 2
13101102 1.270e-2 6
* Composition (table number); interval number
13101201 100 2
13101202 120 6
* Power input proportion; mesh interval number
13101301 1.0 2
13101302 0.0 6
* Initial temperature; mesh point number
13101401 325.0  3
13101402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13101501 310010000 10000 101 1 0.354312962 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13101601 -30 0 1000 1 0.354312962 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13101701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13101801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DHX outlet mixer (DRACS loop)
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13111000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13111100 0 2
* Mesh interval distance; interval number
13111101 1.384e-3 2
13111102 1.270e-2 6
* Composition (table number); interval number
13111201 100 2
13111202 120 6
* Power input proportion; mesh interval number
13111301 1.0 2
13111302 0.0 6
* Initial temperature; mesh point number
13111401 325.0  3
13111402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13111501 311010000 10000 101 1 0.817188128 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13111601 -30 0 1000 1 0.817188128 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13111701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13111801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DRACS hot leg 1
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13201000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13201100 0 2
* Mesh interval distance; interval number
13201101 1.384e-3 2
13201102 1.270e-2 6
* Composition (table number); interval number
13201201 100 2
13201202 120 6
* Power input proportion; mesh interval number
13201301 1.0 2
13201302 0.0 6
* Initial temperature; mesh point number
13201401 325.0  3
13201402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13201501 320010000 10000 101 1 0.294831571 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13201601 -30 0 1000 1 0.294831571 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13201701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13201801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* DRACS hot leg 2
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13301000 28 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13301100 0 2
* Mesh interval distance; interval number
13301101 1.384e-3 2
13301102 1.270e-2 6
* Composition (table number); interval number
13301201 100 2
13301202 120 6
* Power input proportion; mesh interval number
13301301 1.0 2
13301302 0.0 6
* Initial temperature; mesh point number
13301401 325.0  3
13301402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13301501 330010000 10000 101 1 0.266205223 28
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13301601 -30 0 1000 1 0.266205223 28
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13301701 0 0.0 0.0 0.0 28
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13301801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 28
*
* Branch 34
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13401000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13401100 0 2
* Mesh interval distance; interval number
13401101 1.384e-3 2
13401102 1.270e-2 6
* Composition (table number); interval number
13401201 100 2
13401202 120 6
* Power input proportion; mesh interval number
13401301 1.0 2
13401302 0.0 6
* Initial temperature; mesh point number
13401401 325.0  3
13401402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13401501 340010000 10000 101 1 1.368047216 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13401601 -30 0 1000 1 1.368047216 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13401701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13401801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* TCHX 1
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13511000 11 5 2 1 5.95e-3 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13511100 0 2
* Mesh interval distance; interval number
13511101 4.00e-4 4
* Composition (table number); interval number
13511201 110 4
* Power input proportion; mesh interval number
13511301 1.0 4
* Initial temperature; mesh point number
13511401 325.0  5
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (3070: HTC set in general table 70); surface area code (1: length);
* Length; heat structure number
13511501 351010000 10000 3070 1 0.10441 11
* Right boundary condition, see above (-50: T defined in general table 50; 1000: T set in Word 1)
13511601 -50 0 1000 1 0.10441 11
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13511701 0 0.0 0.0 0.0 11
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13511801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 11
*
* TCHX 2
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13521000 4 5 2 1 5.95e-3 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13521100 0 2
* Mesh interval distance; interval number
13521101 4.00e-4 4
* Composition (table number); interval number
13521201 110 4
* Power input proportion; mesh interval number
13521301 1.0 4
* Initial temperature; mesh point number
13521401 325.0  5
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (3070: HTC set in general table 70); surface area code (1: length);
* Length; heat structure number
13521501 352010000 10000 3070 1 0.10398 4
* Right boundary condition, see above (-50: T defined in general table 50; 1000: T set in Word 1)
13521601 -50 0 1000 1 0.10398 4
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13521701 0 0.0 0.0 0.0 4
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13521801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 4
*
* TCHX outlet mixer pipe
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13601000 2 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13601100 0 2
* Mesh interval distance; interval number
13601101 1.384e-3 2
13601102 1.270e-2 6
* Composition (table number); interval number
13601201 100 2
13601202 120 6
* Power input proportion; mesh interval number
13601301 1.0 2
13601302 0.0 6
* Initial temperature; mesh point number
13601401 325.0  3
13601402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13601501 360010000 10000 101 1 0.202040244 2
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13601601 -30 0 1000 1 0.202040244 2
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13601701 0 0.0 0.0 0.0 2
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13601801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 2
*
* TCHX outlet mixer
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13611000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13611100 0 2
* Mesh interval distance; interval number
13611101 1.384e-3 2
13611102 1.270e-2 6
* Composition (table number); interval number
13611201 100 2
13611202 120 6
* Power input proportion; mesh interval number
13611301 1.0 2
13611302 0.0 6
* Initial temperature; mesh point number
13611401 325.0  3
13611402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13611501 361010000 10000 101 1 0.655587814 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13611601 -30 0 1000 1 0.655587814 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13611701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13611801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DRACS cold leg 1
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13701000 16 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13701100 0 2
* Mesh interval distance; interval number
13701101 1.384e-3 2
13701102 1.270e-2 6
* Composition (table number); interval number
13701201 100 2
13701202 120 6
* Power input proportion; mesh interval number
13701301 1.0 2
13701302 0.0 6
* Initial temperature; mesh point number
13701401 325.0  3
13701402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13701501 370010000 10000 101 1 0.220217907 16
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13701601 -30 0 1000 1 0.220217907 16
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13701701 0 0.0 0.0 0.0 16
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13701801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 16
*
* DRACS flowmeter
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13711000 1 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13711100 0 2
* Mesh interval distance; interval number
13711101 1.384e-3 2
13711102 1.270e-2 6
* Composition (table number); interval number
13711201 100 2
13711202 120 6
* Power input proportion; mesh interval number
13711301 1.0 2
13711302 0.0 6
* Initial temperature; mesh point number
13711401 325.0  3
13711402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13711501 371010000 10000 101 1 0.715186706 1
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13711601 -30 0 1000 1 0.715186706 1
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13711701 0 0.0 0.0 0.0 1
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13711801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 1
*
* DRACS cold leg 2
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13801000 3 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13801100 0 2
* Mesh interval distance; interval number
13801101 1.384e-3 2
13801102 1.270e-2 6
* Composition (table number); interval number
13801201 100 2
13801202 120 6
* Power input proportion; mesh interval number
13801301 1.0 2
13801302 0.0 6
* Initial temperature; mesh point number
13801401 325.0  3
13801402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13801501 380010000 10000 101 1 0.222860124 3
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13801601 -30 0 1000 1 0.222860124 3
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13801701 0 0.0 0.0 0.0 3
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13801801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 3
*
* DRACS cold leg 3
* Number of axial heat structures; number of radial mesh points;
* Geometry type (2: cylindrical, coupled to hydrodynamic component);
* Steady-state initialization flag (1: initial T calculated by code);
* Left boundary coordinate; reflood condition
13901000 18 7 2 1 1.39e-2 0
* Mesh location flag; mesh format flag (see p.252 of Manual Appendix A)
13901100 0 2
* Mesh interval distance; interval number
13901101 1.384e-3 2
13901102 1.270e-2 6
* Composition (table number); interval number
13901201 100 2
13901202 120 6
* Power input proportion; mesh interval number
13901301 1.0 2
13901302 0.0 6
* Initial temperature; mesh point number
13901401 325.0  3
13901402 293.15 7
* Left boundary condition definition (here: vol number); increment;
* Boundary condition type (101: convection); surface area code (1: length);
* Length; heat structure number
13901501 390010000 10000 101 1 0.210960212 18
* Right boundary condition, see above (-30: T defined in general table 30; 1000: T set in Word 1)
13901601 -30 0 1000 1 0.210960212 18
* Power source (table number); internal source multiplier; direct mod heatin mult (left)
* Direct mod heatin mult (right); heat structure number
13901701 0 0.0 0.0 0.0 18
* Additional left boundary: heat transfer hydraulic diameter; heated length fwd (10.: ignore);
* Heated length rev (10.: ignore); grid spacer length fwd (0.: ignore); grid spacer length rev (0.: ignore);
* Grid loss coef fwd (0.: ignore); grid loss coef rev (0.: ignore); boiling factor (1.: subcooled liquid);
* Heat structure number
13901801 0.0 10.0 10.0 0.0 0.0 0.0 0.0 1.0 18
*
*******************************************************
*  Material properties
*******************************************************
*
* Stainless steel
* Material type (user supplied table); thermal conductivity format flag;
* Volumetric heat capacity format flag (see p.227 of Manual Appendix A)
20110000   tbl/fctn  1  1
* Stainless steel thermal conductivity (T; k) from k=14.6+0.0127*T[°C]
* (http://www.mace.manchester.ac.uk/project/research/structures/strucfire/
* materialInFire/Steel/StainlessSteel/thermalProperties.htm)
20110001    250.0   14.31
20110002    300.0   14.94
20110003    350.0   15.58
20110004    400.0   16.21
20110005    450.0   16.85
20110006    500.0   17.48
20110007    700.0   20.02
20110008   1000.0   23.83
* Stainless steel volumetric heat capacity (T; rho*cp)
* From cp=450+0.28*T[°C]-2.91E-4*T[°C]^2+1.34E-7*T[°C]^3 (same source)
* and rho=8030[kg/m^3] (http://www.lenntech.com/stainless-steel-304.htm)
20110051    250.0   3.56e6
20110052    300.0   3.67e6
20110053    350.0   3.77e6
20110054    400.0   3.86e6
20110055    450.0   3.94e6
20110056    500.0   4.02e6
20110057    700.0   4.23e6
20110058   1000.0   4.43e6
*
* Copper
* Material type (user supplied table); thermal conductivity format flag;
* Volumetric heat capacity format flag (see p.227 of Manual Appendix A)
20111000   tbl/fctn  1  1
* Copper thermal conductivity (T; k)
* From http://www.efunda.com/materials/elements/TC_Table.cfm?Element_ID=Cu
20111001    250.0   406.
20111002    300.0   401.
20111003    350.0   396.
20111004    400.0   393.
20111005    500.0   386.
20111006   1000.0   352.
* Copper volumetric heat capacity (T; rho*cp)
* cp from http://www.efunda.com/materials/elements/HC_Table.cfm?Element_ID=Cu
* rho=8940[kg/m^3]
20111051    200.0   3.18e6
20111052    250.0   3.34e6
20111053    298.15  3.44e6
20111054    350.0   3.51e6
20111055    400.0   3.56e6
20111056    500.0   3.64e6
20111057    600.0   3.73e6
*
* Fiberglass insulation
* Material type (user supplied table); thermal conductivity format flag;
* Volumetric heat capacity format flag (see p.227 of Manual Appendix A)
20112000   tbl/fctn  1  1
* Fiberglass insulation thermal conductivity (T; k) from k=7.702E-4*T[°C]+0.206
* (CIET-DESIGN-141_Properties_PSHT2_Materials)
20112001    250.0   0.028616
20112002    293.15  0.033060
20112003    350.0   0.038916
20112004    400.0   0.044066
20112005    500.0   0.054366
20112006    600.0   0.064666
* Fiberglass insulation volumetric heat capacity (T; rho*cp)
* From cp=844[J/kg-K] and rho=20[kg/m^3]
20112051    250.0   1.69e4
20112052    293.15  1.69e4
20112053    350.0   1.69e4
20112054    400.0   1.69e4
20112055    500.0   1.69e4
20112056    600.0   1.69e4
*
*******************************************************
*  General tables
*******************************************************
* Heater power
* Table type
20201000  power
* Time; power [W]
20201001 0.      6000.
20201002 3000.   6000.
20201003 3048.   6000.
20201004 3060.   2000.
*
* Ambient temperature
* Table type
20203000  temp
* Time; temperature [K]
20203001  0.00000  298.15
20203002  3048.0   298.15
20203003  4000.0   298.15
*
* CTAH outlet temperature
* Table type
20204000  temp
* Time; temperature [K]
20204001  0.00000  353.15
20204002  3048.0   353.15
*
* TCHX outlet temperature
* Table type
20205000  temp
* Time; temperature [K]
20205001  0.00000  319.15
20205002  3048.0   319.15
*
* CTAH heat transfer coefficient
* Table type
20206000  htc-t
* Time; heat transfer coefficient [W/m^2-K]
20206001  0.00000  80000.
20206002  3048.0   80000.
20206003  3060.0   00000.  
*
* TCHX heat transfer coefficient
* Table type
20207000  htc-t
* Time; heat transfer coefficient [W/m^2-K]
20207001  0.00000  8000.
20207002  4000.0   8000.
*
*******************************************************
*  Trips
*******************************************************
* Variable code; parameter (0 if variable code is time); relationship;
* Variable code; parameter; additive constant; latch indicator
401  time  0  le  null  0  20000.  l
402  time  0  le  null  0   3048.  l
403  time  0  ge  null  0   3055.  l
* End of input
.