% My_FIS : Fuzzy Inference System
% Mien gia tri cua cac bien ra
y=0:0.0001:5;

% Gia tri ro cua bien vao
x1=8.2;
x2=75;

% Khai bao cac gia tri ngon ngu
x1_VeryLow=hlt_hinhthang(x1,-5,0,0,2.5);
x1_Low=hlt_hinhthang(x1,0,2.5,2.5,5);
x1_Medium=hlt_hinhthang(x1,2.5,5,5,7.5);
x1_High=hlt_hinhthang(x1,5,7.5,7.5,10);
x1_VeryHigh=hlt_hinhthang(x1,7.5,10,10,15);

x2_BellowNormal=hlt_hinhthang(x2,0,30,30,50);
x2_Normal=hlt_hinhthang(x2,30,50,50,70);
x2_OverHeating=hlt_hinhthang(x2,50,70,70,90);
x2_VeryHot=hlt_hinhthang(x2,70,90,100,130);

y_NoProblem=hlt_hinhthang(y,0,1,1,2);
y_Caution=hlt_hinhthang(y,1,2,2,3);
y_PossibleProblem=hlt_hinhthang(y,2,3,3,4);
y_ImminentProblem=hlt_hinhthang(y,3,4,4,5);
y_VL=hlt_hinhthang(y,16,30,30,35);

% Cac luat va suy luan mo
result = zeros(size(y));

beta1 = min(x1_VeryLow,x2_BellowNormal);
y1 = Implication_MIN(beta1,y_NoProblem);
result = Or_MAX(result,y1);

beta2 = min(x1_VeryLow,x2_Normal);
y2 = Implication_MIN(beta2,y_NoProblem);
result = Or_MAX(result,y2);

beta3 = min(x1_VeryLow,x2_OverHeating);
y3 = Implication_MIN(beta3,y_NoProblem);
result = Or_MAX(result,y3);

beta4 = min(x1_VeryLow,x2_VeryHot);
y4 = Implication_MIN(beta4,y_Caution);
result = Or_MAX(result,y4);

beta5 = min(x1_Low,x2_BellowNormal);
y5 = Implication_MIN(beta5,y_NoProblem);
result = Or_MAX(result,y5);

beta6 = min(x1_Low,x2_Normal);
y6 = Implication_MIN(beta6,y_NoProblem);
result = Or_MAX(result,y6);

beta7 = min(x1_Low,x2_OverHeating);
y7 = Implication_MIN(beta7,y_Caution);
result = Or_MAX(result,y7);

beta8 = min(x1_Low,x2_VeryHot);
y8 = Implication_MIN(beta8,y_PossibleProblem);
result = Or_MAX(result,y8);

beta9 = min(x1_Medium,x2_BellowNormal);
y9 = Implication_MIN(beta9,y_NoProblem);
result = Or_MAX(result,y9);

beta10 = min(x1_Medium,x2_Normal);
y10 = Implication_MIN(beta10,y_Caution);
result = Or_MAX(result,y10);

beta11 = min(x1_Medium,x2_OverHeating);
y11 = Implication_MIN(beta11,y_PossibleProblem);
result = Or_MAX(result,y11);

beta12 = min(x1_Medium,x2_VeryHot);
y12 = Implication_MIN(beta12,y_PossibleProblem);
result = Or_MAX(result,y12);

beta13 = min(x1_High,x2_BellowNormal);
y13 = Implication_MIN(beta13,y_Caution);
result = Or_MAX(result,y13);

beta14 = min(x1_High,x2_Normal);
y14 = Implication_MIN(beta14,y_PossibleProblem);
result = Or_MAX(result,y14);

beta15 = min(x1_High,x2_OverHeating);
y15 = Implication_MIN(beta15,y_PossibleProblem);
result = Or_MAX(result,y15);

beta16 = min(x1_High,x2_VeryHot);
y16 = Implication_MIN(beta16,y_ImminentProblem);
result = Or_MAX(result,y16);

beta17 = min(x1_VeryHigh,x2_BellowNormal);
y17 = Implication_MIN(beta17,y_PossibleProblem);
result = Or_MAX(result,y17);

beta18 = min(x1_VeryHigh,x2_Normal);
y18 = Implication_MIN(beta18,y_PossibleProblem);
result = Or_MAX(result,y18);

beta19 = min(x1_VeryHigh,x2_OverHeating);
y19 = Implication_MIN(beta19,y_ImminentProblem);
result = Or_MAX(result,y19);

beta20 = min(x1_VeryHigh,x2_VeryHot);
y20 = Implication_MIN(beta20,y_ImminentProblem);
result = Or_MAX(result,y20);
% Ve ket qua suy luan
plot(y,result,'b')

% Giai mo MOM
SOM = 0; LOM=0;
max_result = max(result);
K=length(y);
for k=1:K
    if(result(k) == max_result)
        if(result(k-1)~= max_result)
            i_start = k;
        end
        i_end = k;
    end
end
y_MOM = (i_end+i_start)/2/length(y)*(max(y)-min(y))


