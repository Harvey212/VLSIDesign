*postsim Spice
.prot
*.lib "./cic018.l" TT
.temp 25
.unprot
*.option post
.lib "cic018.l" tt

.inc "adder.pex.sp"


Xadder Cout A1 A2 A3 A4 B1 B2 B3 B4 CIN gnd vdd S1 S2 S3 S4 adder
*********************************************************************
VDD vdd 0 DC 1.8V
VSS gnd 0 DC 0V

VA1 A1 0 pulse(0V 1.8V 10n 1.25n 1.25n 100n 1000n) 
VB1 B1 0 pulse(0V 1.8V 10n 1.25n 1.25n 100n 1000n)

VA2 A2 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)
VB2 B2 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)

VA3 A3 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)
VB3 B3 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)

VA4 A4 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)
VB4 B4 0 pulse(0V 0V 10n 1.25n 1.25n 100n 1000n)

Vcin CIN 0 pulse(0V 0V 10n 1.25n 1.25n 50n 100n)

**********************************************************************
.op
.option post
.tran 0.01n 1u
.probe all
.end
