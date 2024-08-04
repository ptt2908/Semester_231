%Ham can xap xi
x1 = -10:0.001:10;
x2 = -10:0.001:10;
x = [x1;x2];
y = 2*exp(-1/4*(x1-2).^2 -1/9*(x2-4).^2) - 3*exp(-(x1+5).^2-(x2+1).^2) + exp(-(x1-6).^2-(x2+5).^2);
figure(1)
plot3(x1,x2,y);
%Du lieu dung de huan luyen NN
K =300;
X1 = -10 + 20*rand(1, K);
X2 = -10 + 20*rand(1, K);
D=2*exp(-1/4*(X1-2).^2 -1/9*(X2-4).^2) - 3*exp(-(X1+5).^2-(X2+1).^2) + exp(-(X1-6).^2-(X2+5).^2);
figure(2)
plot3(X1,X2,D,'ro')
%Khoi tao mang va huan luyen
N=100;
X = [X1;X2];
mynet=newff(X,D,N,{'tansig' 'purelin'});
mynet=train(mynet,X,D);
%Danh gia ket qua huan luyen
ynn=sim(mynet,x);
figure(3)
plot3(x1,x2,y,'b',x1,x2,ynn,'--r')
mse = mean((y - ynn).^2)
