 clear all;close all;clc
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
 % les paramatres de la turbine
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
c1=0.5176;
c2=116;
c3=0.4;
c4=5;
c5=21;
c6=0.0068;
Ptn=1
R=3;
G=5.4;
Jt=0.042;
Ft=0.017;
rou=1.225;
s=pi*(R^2) 
Vsn=220;             
Fsn=50;              
Rs=0.455;              
Rr=0.62;            
Ls=0.084;            
Lr=0.081;             
Msr=0.078;           
M=0.078;             
Jg=0.3125;           
J=(Jt/(G^2))+Jg      
Fg=6.73e-3;      
F=(Ft/(G^2))+Fg
p=2;                 
Pn=7.5000;        
Ts=Ls/Rs;
Tr=Lr/Rr;

sigm=(1-((Msr^2)/(Lr*Ls)));
a=[(Rr/(sigm*Lr))+((Rs*Msr^2)/(sigm*Lr*(Ls^2)))];
b=(Rs*Msr)/(sigm*Lr*(Ls^2));
c=Msr/(sigm*Lr*Ls);
d=(Rs*Msr)/Ls;
e=1/(sigm*Lr);
T=Rs/Ls;
Vs=380%
g=0.04,
ws=Fsn*pi*2

tou1=0.00001
kp_c=(Lr-((Msr^2)/Ls))/tou1
ki_c=10*Rr/tou1
tou2=0.01%0.01
kp_p=tou1/tou2
ki_p=1/tou2
%
xi=3.5
tho_bov=25
tho_bfv=tho_bov/15
wn=xi*tho_bfv
kp_mppt=2*xi*wn*J
ki_mppt=J*(wn^2)

E=380;
Vsn=E/sqrt(3)
vdc=600;
Emax=Vsn*sqrt(2)
Fsn=50;
Rf=0.3;
Lf=0.014;
Cf=2e-3;
Rch=85;

ksi=0.707;
wn=150;
kpv=2*ksi*wn*Cf
kiv=(wn^2)*Cf

trf=0.003
kpf=3*Lf/trf
kif=3*Rf/trf
%
ksi1=1.3
wn1=490
kpv_voc=2*ksi1*Cf*wn1
kiv_voc=Cf*wn1^2
ksiip=4.5
wnip=200
touip=1/(2*ksiip*wnip)
ki_ip=touip*(wnip^2)
kp_ip=Cf/touip




