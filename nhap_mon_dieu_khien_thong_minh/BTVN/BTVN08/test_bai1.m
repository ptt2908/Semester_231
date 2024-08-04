x = [0.5;1];
d = 1; eta = 0.2;
v1 = [0.5;-1];
v2 = [1;0.4];
w = [-0.8;0.6];

neth1 = v1'*x;
neth2 = v2'*x;
z1 = logsig(neth1);
z2 = logsig(neth2);
z = [z1;z2];
neto = w'*z;
y = neto;
%cap nhat trong so lop ra
dentalo = (d-y);
w2 = w + eta*dentalo*z;
%cap nhat trong so lop an
dentalh1 = dentalo*w(1)*z1*(1-z1);
v1_2 = v1 + eta*dentalh1*x;
dentalh2 = dentalo*w(2)*z2*(1-z2);
v2_2 = v2+ eta*dentalh2*x;

