*Adder Spice

*.lib 'cic018.l' tt

.subckt FA A B CIN Carry gnd Sum vdd

Mp1 n1 A vdd vdd P_18 w=3u l=0.6u
Mp2 n1 B vdd vdd P_18 w=3u l=0.6u
Mp3 cob CIN n1 vdd P_18 w=3u l=0.6u

Mp4 n2 A vdd vdd P_18 w=3u l=0.6u
Mp5 cob B n2 vdd P_18 w=3u l=0.6u

Mp6 n3 A vdd vdd P_18 w=3u l=0.6u
Mp7 n3 B vdd vdd P_18 w=3u l=0.6u
Mp8 n3 CIN vdd vdd P_18 w=3u l=0.6u

Mp9 sb cob n3 vdd P_18 w=3u l=0.6u

Mp10 n5 A vdd vdd P_18 w=3u l=0.6u
Mp11 n6 B n5 vdd P_18 w=3u l=0.6u
Mp12 sb CIN n6 vdd P_18 w=3u l=0.6u

Mp13 Sum sb vdd vdd P_18 w=3u l=0.6u
Mp14 Carry cob vdd vdd P_18 w=3u l=0.6u




Mn1 n7 A gnd gnd N_18 w=1u l=0.6u
Mn2 n7 B gnd gnd N_18 w=1u l=0.6u
Mn3 cob CIN n7 gnd N_18 w=1u l=0.6u

Mn4 n8 A gnd gnd N_18 w=1u l=0.6u
Mn5 cob B n8 gnd N_18 w=1u l=0.6u

Mn6 n9 A gnd gnd N_18 w=1u l=0.6u
Mn7 n9 B gnd gnd N_18 w=1u l=0.6u
Mn8 n9 CIN gnd gnd N_18 w=1u l=0.6u

Mn9 sb cob n9 gnd N_18 w=1u l=0.6u

Mn10 n10 A gnd gnd N_18 w=1u l=0.6u
Mn11 n11 B n10 gnd N_18 w=1u l=0.6u
Mn12 sb CIN n11 gnd N_18 w=1u l=0.6u

Mn13 Sum sb gnd gnd N_18 w=1u l=0.6u
Mn14 Carry cob gnd gnd N_18 w=1u l=0.6u

.ends


.subckt adder A1 B1 A2 B2 A3 B3 A4 B4 Cin S1 S2 S3 S4 Cout vdd gnd
XFA1 A1 B1 Cin C1 gnd S1 vdd FA
XFA2 A2 B2 C1 C2 gnd S2 vdd FA
XFA3 A3 B3 C2 C3 gnd S3 vdd FA
XFA4 A4 B4 C3 Cout gnd S4 vdd FA
.ends