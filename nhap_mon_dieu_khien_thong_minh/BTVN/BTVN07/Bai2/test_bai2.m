x = [-1; 0.3; 0.5]

z1 = my_perceptron(w1,x);
z2 = my_perceptron(w2,x);

y1 = z1;
y2 = my_perceptron(w3,[-1;z1;z2]);
y3 = my_perceptron(w4,[-1;z1;z2]);

[y1 y2 y3]

%y1 giuong 
if ([y1 y2 y3] == [1 0 0]) 
    str = 'Giuong';
    disp(str);
end
%y2 ghe
if ([y1 y2 y3] == [0 1 0]) 
    str = 'Ghe';
    disp(str);
end
%y3 ban
if ([y1 y2 y3] == [0 0 1]) 
    str = 'Ban';
    disp(str);
end