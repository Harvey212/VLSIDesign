*presim Spice

.inc "adder.sp"
.lib 'cic018.l' tt
*********************************************************************
Vdd vdd 0 1.8V
Vss vss 0 0V

Xadder A1 B1 A2 B2 A3 B3 A4 B4 Cin S1 S2 S3 S4 Cout vdd gnd adder
***********************************************************************
VA1 A1 0 pulse(0V 1.8V 10n 1.25n 1.25n 100n 1000n) 
VB1 B1 0 pulse(0V 1.8V 10n 1.25n 1.25n 100n 1000n)

VA2 A2 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)
VB2 B2 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)

VA3 A3 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)
VB3 B3 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)

VA4 A4 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)
VB4 B4 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)


Vcin Cin 0 pulse(0V 0V 10n 1.25n 1.25n 50n 100n)

**********************************************************************
.op
.option post
.tran 0.01n 1u
.probe all
.end
