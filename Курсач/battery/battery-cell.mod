* Simple battery cell model by Andrey Zabolotnyi (C) 2012

.SUBCKT LiFePO4 C A C=1 SOC=0.8 RS=1n RTS=1n RTL=1n CTS=1p CTL=1p
.param CC=3600*{C}
C1 CC+ A {CC} IC={SOC}
B1 N001 A V=3.20-exp(-20*(V(CC+)-0.03))+exp(-200*(1-V(CC+)))+0.12*V(CC+)**2
R1 N001 N002 {RS}
R2 N002 N003 {RTS}
R3 N003 C {RTL}
C2 N003 N002 {CTS}
C3 C N003 {CTL}
F1 A CC+ B1 1
.ends LiFePO4

.SUBCKT LiPo C A C=1 SOC=0.8 RS=1n RTS=1n RTL=1n CTS=1p CTL=1p
.param CC=3600*{C}
C1 CC+ A {CC} IC={SOC}
B1 N001 A V=3.8+0.15*V(CC+)+0.05*V(CC+)**2-1.2*exp(-60*(V(CC+)))+0.5*exp(-20*(1-V(CC+)))
R1 N001 N002 {RS}
R2 N002 N003 {RTS}
R3 N003 C {RTL}
C2 N003 N002 {CTS}
C3 C N003 {CTL}
F1 A CC+ B1 1
.ends LiFePO4
