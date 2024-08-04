x = [-1; -1; 3]

z1 = my_perceptron(w1,x);
z2 = my_perceptron(w2,x);

y = my_perceptron(w3,[-1;z1;z2])

if (y == 1) 
    str = 'Nhom 1';
    disp(str);
elseif (y == 0)
  str = 'Nhom 2';
    disp(str); 
end