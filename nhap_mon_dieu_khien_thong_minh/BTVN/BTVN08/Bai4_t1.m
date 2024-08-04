%Ham can xap xi
the1 = -pi:0.01:pi;
the2 = -pi:0.01:pi;
x = 0.3*cos(the1) + 0.5*cos(the1 + the2);
y = 0.3*sin(the1) + 0.5*sin(the1 + the2);
%%Du lieu dung de huan luyen NN
K = 300;
theta1 = -pi + 2*pi*rand(1, K);
theta2 = -pi + 2*pi*rand(1, K);
X = 0.3*cos(theta1) + 0.5*cos(theta1 + theta2);
Y = 0.3*sin(theta1) + 0.5*sin(theta1 + theta2);
%Khoi tao mang va huan luyen
XX = [theta1; theta2];
D = [X; Y];
N = 30;
mynet=newff(XX,D,N,{'tansig' 'purelin'});
mynet=train(mynet,XX,D);
%Danh gia ket qua huan luyen
Dnn=sim(mynet,[the1;the2]);
xnn = Dnn(1, :);
ynn = Dnn(2, :);

figure(1)
plot(xnn, ynn, '--r', x, y, 'b');



