*Adder Spice

.lib 'cic018.l' tt

.global vdd vss

.subckt FA a b c cout GND sum vdd
Mp1 n1 b vdd vdd P_18 w=1.8u l=0.18u
Mp2 sum n5 vdd vdd P_18 w=1.8u l=0.18u
Mp3 n2 b vdd vdd P_18 w=1.8u l=0.18u
Mp4 cout n3 vdd vdd P_18 w=1.8u l=0.18u
Mp5 n2 a vdd vdd P_18 w=1.8u l=0.18u
Mp6 n3 c n2 vdd P_18 w=1.8u l=0.18u
Mp7 n3 a n1 vdd P_18 w=1.8u l=0.18u
Mp8 n4 c vdd vdd P_18 w=1.8u l=0.18u
Mp9 n4 b vdd vdd P_18 w=1.8u l=0.18u
Mp10 n4 a vdd vdd P_18 w=1.8u l=0.18u
Mp11 n5 n3 n4 vdd P_18 w=1.8u l=0.18u
Mp12 n7 b n8 vdd P_18 w=1.8u l=0.18u
Mp13 n5 a n7 vdd P_18 w=1.8u l=0.18u
Mp14 n8 c vdd vdd P_18 w=1.8u l=0.18u


Mn1 n5 a n9 GND N_18 w=0.6u l=0.18u
Mn2 n9 b n13 GND N_18 w=0.6u l=0.18u
Mn3 n13 c GND GND N_18 w=0.6u l=0.18u
Mn4 cout n3 GND GND N_18 w=0.6u l=0.18u
Mn5 n11 a GND GND N_18 w=0.6u l=0.18u
Mn6 n3 a n12 GND N_18 w=0.6u l=0.18u
Mn7 sum n5 GND GND N_18 w=0.6u l=0.18u
Mn8 n3 c n11 GND N_18 w=0.6u l=0.18u
Mn9 n12 b GND GND N_18 w=0.6u l=0.18u
Mn10 n11 b GND GND N_18 w=0.6u l=0.18u
Mn11 n5 n3 n6 GND N_18 w=0.6u l=0.18u
Mn12 n6 a GND GND N_18 w=0.6u l=0.18u
Mn13 n6 b GND GND N_18 w=0.6u l=0.18u
Mn14 n6 c GND GND N_18 w=0.6u l=0.18u
.ends


.subckt FFA A1 B1 A2 B2 A3 B3 A4 B4 Cin S1 S2 S3 S4 Cout vdd vss C2 C3 C4
XFA1 A1 B1 Cin C2 vss S1 vdd FA
XFA2 A2 B2 C2 C3 vss S2 vdd FA
XFA3 A3 B3 C3 C4 vss S3 vdd FA
XFA4 A4 B4 C4 Cout vss S4 vdd FA
.ends

*********************************************************************
Vdd vdd 0 1.8V
Vss vss 0 0V

XFFA A1 B1 A2 B2 A3 B3 A4 B4 Cin S1 S2 S3 S4 Cout vdd vss C2 C3 C4 FFA
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
