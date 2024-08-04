% My_FIS : Fuzzy Inference System
% Mien gia tri cua cac bien ra
y=0:0.001:30;

% Gia tri ro cua bien vao
x1=10;
x2=12;

% Khai bao cac gia tri ngon ngu
x1_LO=hlt_hinhthang(x1,-5,0,0,15);
x1_MED=hlt_hinhthang(x1,0,15,15,40);
x1_HI=hlt_hinhthang(x1,15,40,60,60);

x2_LO=hlt_hinhthang(x2,-5,0,0,10);
x2_MED=hlt_hinhthang(x2,0,10,10,15);
x2_HI=hlt_hinhthang(x2,10,15,15,20);
x2_VH=hlt_hinhthang(x2,15,20,30,30);

y_VS=hlt_hinhthang(y,-2,0,0,3);
y_S=hlt_hinhthang(y,0,3,3,8);
y_MED=hlt_hinhthang(y,3,8,8,16);
y_L=hlt_hinhthang(y,8,16,16,30);
y_VL=hlt_hinhthang(y,16,30,30,35);

% Cac luat va suy luan mo
result = zeros(size(y));

beta1 = min(x1_LO,x2_LO);
y1 = Implication_MIN(beta1,y_VL);
result = Or_MAX(result,y1);

beta2 = min(x1_LO,x2_MED);
y2 = Implication_MIN(beta2,y_MED);
result = Or_MAX(result,y2);

beta3 = min(x1_LO,x2_HI);
y3 = Implication_MIN(beta3,y_S);
result = Or_MAX(result,y3);

beta4 = min(x1_LO,x2_VH);
y4 = Implication_MIN(beta4,y_VS);
result = Or_MAX(result,y4);

beta5 = min(x1_MED,x2_LO);
y5 = Implication_MIN(beta5,y_VL);
result = Or_MAX(result,y5);

beta6 = min(x1_MED,x2_MED);
y6 = Implication_MIN(beta6,y_L);
result = Or_MAX(result,y6);

beta7 = min(x1_MED,x2_HI);
y7 = Implication_MIN(beta7,y_S);
result = Or_MAX(result,y7);

beta8 = min(x1_MED,x2_VH);
y8 = Implication_MIN(beta8,y_VS);
result = Or_MAX(result,y8);

beta9 = min(x1_HI,x2_LO);
y9 = Implication_MIN(beta9,y_VL);
result = Or_MAX(result,y9);

beta10 = min(x1_HI,x2_MED);
y10 = Implication_MIN(beta10,y_L);
result = Or_MAX(result,y10);

beta11 = min(x1_HI,x2_HI);
y11 = Implication_MIN(beta11,y_MED);
result = Or_MAX(result,y11);

beta12 = min(x1_HI,x2_VH);
y12 = Implication_MIN(beta12,y_VS);
result = Or_MAX(result,y12);
% Ve ket qua suy luan
plot(y,result,'b')

% Giai mo trong tam
TS = 0;
MS = 0;
K=length(y);
for k=1:K
    TS = TS + y(k)*result(k);
    MS = MS + result(k);
end
y_defuz=TS/MS
    




