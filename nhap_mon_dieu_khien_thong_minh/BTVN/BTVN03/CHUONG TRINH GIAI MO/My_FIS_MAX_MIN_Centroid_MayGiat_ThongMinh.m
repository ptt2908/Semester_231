% My_FIS : Fuzzy Inference System
% Mien gia tri cua cac bien ra
y=0:0.001:60;

% Gia tri ro cua bien vao
x1=40;
x2=80;
x3=30;

% Khai bao cac gia tri ngon ngu
x1_Small=hlt_hinhthang(x1,-5,0,0,50);
x1_Medium=hlt_hinhthang(x1,0,50,50,100);
x1_Large=hlt_hinhthang(x1,50,100,100,160);

x2_NotGreasy=hlt_hinhthang(x2,-5,0,0,50);
x2_Medium=hlt_hinhthang(x2,0,50,50,100);
x2_Greasy=hlt_hinhthang(x2,50,100,100,160);

x3_Light=hlt_hinhthang(x3,-5,0,0,50);
x3_Medium=hlt_hinhthang(x3,0,50,50,100);
x3_Heavy=hlt_hinhthang(x3,50,100,100,160);

y_VeryShort=hlt_hinhthang(y,0,8,8,12);
y_Short=hlt_hinhthang(y,8,12,12,20);
y_Medium=hlt_hinhthang(y,12,20,20,40);
y_Long=hlt_hinhthang(y,20,40,40,60);
y_VeryLong=hlt_hinhthang(y,40,60,60,135);

% Cac luat va suy luan mo
result = zeros(size(y));

beta1 = min(min(x1_Small,x2_NotGreasy),x3_Light);
y1 = Implication_MIN(beta1,y_VeryShort);
result = Or_MAX(result,y1);

beta2 = min(min(x1_Small,x2_NotGreasy),x3_Medium);
y2 = Implication_MIN(beta2,y_Short);
result = Or_MAX(result,y2);

beta3 = min(min(x1_Small,x2_NotGreasy),x3_Heavy);
y3 = Implication_MIN(beta3,y_Medium);
result = Or_MAX(result,y3);

beta4 = min(min(x1_Small,x2_Medium),x3_Light);
y4 = Implication_MIN(beta4,y_Short);
result = Or_MAX(result,y4);

beta5 = min(min(x1_Small,x2_Medium),x3_Medium);
y5 = Implication_MIN(beta5,y_Short);
result = Or_MAX(result,y5);

beta6 = min(min(x1_Small,x2_Medium),x3_Heavy);
y6 = Implication_MIN(beta6,y_Medium);
result = Or_MAX(result,y6);

beta7 = min(min(x1_Small,x2_Greasy),x3_Light);
y7 = Implication_MIN(beta7,y_Short);
result = Or_MAX(result,y7);

beta8 = min(min(x1_Small,x2_Greasy),x3_Medium);
y8 = Implication_MIN(beta8,y_Medium);
result = Or_MAX(result,y8);

beta9 = min(min(x1_Small,x2_Greasy),x3_Heavy);
y9 = Implication_MIN(beta9,y_Long);
result = Or_MAX(result,y9);

beta10 = min(min(x1_Medium,x2_NotGreasy),x3_Light);
y10 = Implication_MIN(beta10,y_Short);
result = Or_MAX(result,y10);

beta11 = min(min(x1_Medium,x2_NotGreasy),x3_Medium);
y11 = Implication_MIN(beta11,y_Short);
result = Or_MAX(result,y11);

beta12 = min(min(x1_Medium,x2_NotGreasy),x3_Heavy);
y12 = Implication_MIN(beta12,y_Medium);
result = Or_MAX(result,y12);

beta13 = min(min(x1_Medium,x2_Medium),x3_Light);
y13 = Implication_MIN(beta13,y_Short);
result = Or_MAX(result,y13);

beta14 = min(min(x1_Medium,x2_Medium),x3_Medium);
y14 = Implication_MIN(beta14,y_Medium);
result = Or_MAX(result,y14);

beta15 = min(min(x1_Medium,x2_Medium),x3_Heavy);
y15 = Implication_MIN(beta15,y_Medium);
result = Or_MAX(result,y15);

beta16 = min(min(x1_Medium,x2_Greasy),x3_Light);
y16 = Implication_MIN(beta16,y_Short);
result = Or_MAX(result,y16);

beta17 = min(min(x1_Medium,x2_Greasy),x3_Medium);
y17 = Implication_MIN(beta17,y_Medium);
result = Or_MAX(result,y17);

beta18 = min(min(x1_Medium,x2_Greasy),x3_Heavy);
y18 = Implication_MIN(beta18,y_Long);
result = Or_MAX(result,y18);

beta19 = min(min(x1_Large,x2_NotGreasy),x3_Light);
y19 = Implication_MIN(beta19,y_Medium);
result = Or_MAX(result,y19);

beta20 = min(min(x1_Large,x2_NotGreasy),x3_Medium);
y20 = Implication_MIN(beta20,y_Medium);
result = Or_MAX(result,y20);

beta21 = min(min(x1_Large,x2_NotGreasy),x3_Heavy);
y21 = Implication_MIN(beta21,y_Long);
result = Or_MAX(result,y21);

beta22 = min(min(x1_Large,x2_Medium),x3_Light);
y22 = Implication_MIN(beta22,y_Medium);
result = Or_MAX(result,y22);

beta23 = min(min(x1_Large,x2_Medium),x3_Medium);
y23 = Implication_MIN(beta23,y_Long);
result = Or_MAX(result,y23);

beta24 = min(min(x1_Large,x2_Medium),x3_Heavy);
y24 = Implication_MIN(beta24,y_VeryLong);
result = Or_MAX(result,y24);

beta25 = min(min(x1_Large,x2_Greasy),x3_Light);
y25 = Implication_MIN(beta25,y_Medium);
result = Or_MAX(result,y25);

beta26 = min(min(x1_Large,x2_Medium),x3_Medium);
y26 = Implication_MIN(beta26,y_VeryLong);
result = Or_MAX(result,y26);

beta27 = min(min(x1_Large,x2_Medium),x3_Heavy);
y27 = Implication_MIN(beta27,y_VeryLong);
result = Or_MAX(result,y27);
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
    




