X1 = [-1 -1 -1 -1 -1 -1;...
      0 0 0 1 0 -1;...
      1 2 3 3 4 3];
D1 = [1 1 1 1 0 0];
X2 = X1;
D2 = [0 0 0 1 1 0];

w1 = train_perceptron(X1,D1)
w2 = train_perceptron(X2,D2)

X3 = [-1 -1 -1 -1;...
      1 1 0 0;...
      0 1 1 0];
D3 = [1 0 0 0]; 
w3 = train_perceptron(X3,D3)