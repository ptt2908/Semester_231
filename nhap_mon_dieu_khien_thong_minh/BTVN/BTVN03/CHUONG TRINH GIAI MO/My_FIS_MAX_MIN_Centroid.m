% My_FIS : Fuzzy Inference System
% Mien gia tri cua cac bien ra
y=-11:0.01:11;

% Gia tri ro cua bien vao
x1=4;
x2=-2;

% Khai bao cac gia tri ngon ngu
x1_NB=hlt_hinhthang(x1,-15,-10,-6,-3);
x1_NS=hlt_hinhthang(x1,-6,-3,-3,0);
x1_ZE=hlt_hinhthang(x1,-3,0,0,3);
x1_PS=hlt_hinhthang(x1,0,3,3,6);
x1_PB=hlt_hinhthang(x1,3,6,10,15);

x2_NE=hlt_hinhthang(x2,-10,-7,-5,0);
x2_ZE=hlt_hinhthang(x2,-5,0,0,5);
x2_PO=hlt_hinhthang(x2,0,5,7,10);

y_NB=hlt_hinhthang(x1,-15,-11,-8,-4);
y_NS=hlt_hinhthang(x1,-8,-4,-4,0);
y_ZE=hlt_hinhthang(x1,-4,0,0,4);
y_PS=hlt_hinhthang(x1,0,4,4,8);
y_PB=hlt_hinhthang(x1,4,8,11,15);
% Cac luat va suy luan mo
result = zeros(size(y));

beta1 = min(x1_NB,x2_NE);
y1 = Implication_MIN(beta1,y_PB);
result = Or_MAX(result,y1);

beta2 = min(x1_NB,x2_ZE);
y2 = Implication_MIN(beta2,y_PB);
result = Or_MAX(result,y2);

beta3 = min(x1_NB,x2_PO);
y3 = Implication_MIN(beta3,y_PS);
result = Or_MAX(result,y3);

beta4 = min(x1_NS,x2_NE);
y4 = Implication_MIN(beta4,y_PB);
result = Or_MAX(result,y4);

beta5 = min(x1_NS,x2_ZE);
y5 = Implication_MIN(beta5,y_PS);
result = Or_MAX(result,y5);

beta6 = min(x1_NS,x2_PO);
y6 = Implication_MIN(beta6,y_ZE);
result = Or_MAX(result,y6);

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
    




