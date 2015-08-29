***netlist of CMOS inverter
.include 'ami06_models.txt'

*--------------------------------------------
*Parameters
*Several parameters are declared
*These parameters are used later in this file
*---------------------------------------------
.param wn = 1.5u
.param wp = 3u


***MOSFETs
m1 out in vdd vdd ami06P l=600n w='wp'
m2 out in 0 0 ami06N l=600n w='wn'

***voltage sources
vdd vdd 0 5
vin in 0 PULSE(0V 5V 20n 100p 100p 20n 40n)
.options list node post

***Transient Analysis
.tran 20n 200n

*---------------------------------------------
*ALTER
*HSPICE runs several times according to the
*number of the .alter statement.
*---------------------------------------------
.alter 
.param wp = 6u wn = 3u
.alter
.param wp = 12u wn = 6u
.end


 
 

.end 
