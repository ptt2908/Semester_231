X1 = [-1 -1 -1 -1 -1 -1 -1;...
       0 0 0 0 1 -1 0;...
      2 -2 0 1 0 0 -1];
D1 = [1 0 0 0 0 0 0];
X2 = X1;
D2 = [0 1 0 0 0 0 0];
X3 = X1;
D3 = [1 0 1 1 0 1 0];
X4 = X1;
D4 = [1 0 1 1 1 0 0];

w1 = train_perceptron(X1,D1)
w2 = train_perceptron(X2,D2)
w3 = train_perceptron(X3,D3)
w4 = train_perceptron(X4,D4)

%z1=1;z2=0 va z1=0;z2=1 thi y1=1
%z1=0;z2=0 xet z3 z4
X5 = [-1 -1 -1 -1 -1 -1;...
       1 0 0 0 0 0;...
       0 1 0 0 0 0;...
       1 0 1 0 1 0;...
       1 0 1 1 0 0];
   
D5 = [1 1 0 0 0 0 ];
X6 = X5;
D6 = [0 0 1 0 0 0 ];
X7 = X5;
D7 = [0 0 0 1 1 1 ];

w5 = train_perceptron(X5,D5)
w6 = train_perceptron(X6,D6)
w7 = train_perceptron(X7,D7)
 




