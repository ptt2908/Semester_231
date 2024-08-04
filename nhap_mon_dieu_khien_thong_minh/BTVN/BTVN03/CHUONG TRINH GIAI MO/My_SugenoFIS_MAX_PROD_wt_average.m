% My_SugenoFIS : Sugeno Fuzzy Inference System
clear all

% Gia tri ro cua bien vao
x1=-3.5;
x2=8;

% Khai bao cac gia tri ngon ngu
x1_NB=hlt_hinhthang(x1,-13,-10,-6,-2);
x1_NS=hlt_hinhthang(x1,-6,-2,-2,0);
x1_ZE=hlt_hinhthang(x1,-2,0,0,2);
x1_PS=hlt_hinhthang(x1,0,2,2,6);
x1_PB=hlt_hinhthang(x1,2,6,10,13);

x2_VL=hlt_hinhthang(x2,-3,0,0,3);
x2_LO=hlt_hinhthang(x2,0,3,3,7);
x2_ME=hlt_hinhthang(x2,3,7,7,10);
x2_HI=hlt_hinhthang(x2,7,10,13,15);

y_NB=-12;
y_NM=-8;
y_NS=-4;
y_ZE=0;
y_PS=4;
y_PM=8;
y_PB=12;

% Cac luat va suy luan mo
beta1 = (x1_NB*x2_VL);
y1 = y_NB;

beta2 =  (x1_NB*x2_LO);
y2 = y_NB;

beta3 =  (x1_NB*x2_ME);
y3 = y_NM;

beta4 =  (x1_NB*x2_HI);
y4 = y_NS;

beta5 =  (x1_NS*x2_VL);
y5 = y_NM;

beta6 =  (x1_NS*x2_LO);
y6 = y_NM;

beta7 =  (x1_NS*x2_ME);
y7 = y_NS;

beta8 =  (x1_NS*x2_HI);
y8 = y_ZE;

beta9 =  (x1_ZE*x2_VL);
y9 = y_NS;

beta10 =  (x1_ZE*x2_LO);
y10 = y_ZE;

beta11 =  (x1_ZE*x2_ME);
y11 = y_ZE;

beta12 =  (x1_ZE*x2_HI);
y12 = y_PS;

beta13 =  (x1_PS*x2_VL);
y13 = y_ZE;

beta14 =  (x1_PS*x2_LO);
y14 = y_PS;

beta15 =  (x1_PS*x2_ME);
y15 = y_PM;

beta16 =  (x1_PS*x2_HI);
y16 = y_PM;

beta17 =  (x1_PB*x2_VL);
y17 = y_PS;

beta18 =  (x1_PB*x2_LO);
y18 = y_PM;

beta19 =  (x1_PB*x2_ME);
y19 = y_PB;

beta20 =  (x1_PB*x2_HI);
y20 = y_PB;

% Giai mo trung binh co trong so


TS = beta1*y1+beta2*y2+beta3*y3+...
     beta4*y4+beta5*y5+beta6*y6+...
     beta7*y7+beta8*y8+beta9*y9+...
     beta10*y10+beta11*y11+beta12*y12+...
     beta13*y13+beta14*y14+beta15*y15+...
     beta16*y16+beta17*y17+beta18*y18+...
     beta19*y19+beta20*y20;
MS = beta1+beta2+beta3+...
     beta4+beta5+beta6+...
     beta7+beta8+beta9+...
     beta10+beta11+beta12+...
     beta13+beta14+beta15+...
     beta16+beta17+beta18+...
     beta19*y1+beta20;
 
y_defuz=TS/MS
    




