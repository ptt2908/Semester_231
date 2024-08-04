x = [-1; 0.5;0.5]

z1 = my_perceptron(w1,x);
z2 = my_perceptron(w2,x);
z3 = my_perceptron(w3,x);
z4 = my_perceptron(w4,x);


y1 = my_perceptron(w5,[-1;z1;z2;z3;z4]);
y2 = my_perceptron(w6,[-1;z1;z2;z3;z4]);
y3 = my_perceptron(w7,[-1;z1;z2;z3;z4]);

[y1 y2 y3]
if ([y1 y2 y3] == [1 0 0]) 
    str = 'Tam giac';
    disp(str);
end
if ([y1 y2 y3] == [0 1 0]) 
    str = 'Vuong';
    disp(str);
end
if ([y1 y2 y3] == [0 0 1]) 
    str = 'Tron';
    disp(str);
end
    
    