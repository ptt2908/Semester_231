x = [-1; 3790;1605;1460]

z1 = my_perceptron(w1,x);
z2 = my_perceptron(w2,x);
z3 = my_perceptron(w3,x);

y1 = z1;
y2 = my_perceptron(w4,[-1;z2;z3]);
y3 = my_perceptron(w5,[-1;z2;z3]);

[y1 y2 y3]

%y1 xe oto duoi 9 cho ngoi 
if ([y1 y2 y3] == [1 0 0]) 
    str = 'xe oto duoi 9 cho ngoi';
    disp(str);
end
%y2 xe oto duoi 12-16 cho ngoi
if ([y1 y2 y3] == [0 1 0]) 
    str = 'xe oto duoi 12-16 cho ngoi';
    disp(str);
end
%y3 xe oto hon 16 cho ngoi
if ([y1 y2 y3] == [0 0 1]) 
    str = 'xe oto hon 16 cho ngoi';
    disp(str);
end