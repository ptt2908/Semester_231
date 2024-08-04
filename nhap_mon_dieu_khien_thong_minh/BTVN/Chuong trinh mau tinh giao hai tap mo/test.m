x=-8:0.01:12;
muyA=hlt_hinhthang(x,-6,-2,0,6);
muyB=hlt_hinhthang(x,-4,2,2,10);
muyC=Or_MAX(muyA,muyB)
plot(x,muyA,'r',x,muyB,'b',x,muyC,'g')