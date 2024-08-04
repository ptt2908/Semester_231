Theta = [pi/2;pi/2];
B = sim(mynet,Theta);
x_nn = B(1,1)
y_nn = B(2,1)
the1 = Theta(1,:);
the2 = Theta(2,:);
x = 0.3*cos(the1) + 0.5*cos(the1 + the2)
y = 0.3*sin(the1) + 0.5*sin(the1 + the2)