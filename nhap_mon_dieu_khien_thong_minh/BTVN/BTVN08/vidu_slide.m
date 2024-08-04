%Ham can xap xi
x=0:0.001:2;
y=exp(-x).*sin(10*x);
figure(1)
plot(x,y);

%Du lieu dung de huan luyen NN
K =300;
X = 2*rand(1,K);
D=exp(-X).*sin(10*X);
figure(2)
plot(X,D,'ro')

%Khoi tao mang va huan luyen
N=8;
mynet=newff(X,D,N,{'tansig' 'purelin'});
mynet=train(mynet,X,D);

%Danh gia ket qua huan luyen
ynn=sim(mynet,x);
figure(3)
plot(x,y,'b',x,ynn,'r')









