function y=ts_lopan(v1,v2,w,x)
neth1 = v1'*x - 0.1;
neth2 = v2'*x - 0.3;
z1 = logsig(neth1);
z2 = logsig(neth2);
z = [z1;z2];
neto = w'*z + 0.2;
y = neto;
end