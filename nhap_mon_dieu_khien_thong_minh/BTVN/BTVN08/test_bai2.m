x = [0.8;-1];
d = 0.1; eta = 0.3;
v1 = [0.5;-1];
v2 = [1;0.4];
w = [-0.8;0.6];
b1 = 0.1; b2 = 0.3; b3 = -0.2;
neth1 = v1'*x - b1;
neth2 = v2'*x - b2;
z1 = logsig(neth1);
z2 = logsig(neth2);
z = [z1;z2];
neto = w'*z - b3;
y = neto;
%cap nhat trong so lop ra
dentalo = (d-y);
w2 = w + eta*dentalo*z;
%
dentalh1 = dentalo*w(1)*z1*(1-z1);
v1_2 = v1 + eta*dentalh1*x;
dentalh2 = dentalo*w(2)*z2*(1-z2);
v2_2 = v2+ eta*dentalh2*x;