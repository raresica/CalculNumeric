deff('y=f(x)','y=cos(x)')
i=0:9; 
x=%pi/10*i;
y=f(x);
z=[%pi/7];
d=splin(x,y);
[s,s1,s2,s3]=interp(z,x,y,d)
