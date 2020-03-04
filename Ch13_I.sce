deff('y=g(x)','if x==0 then y=1; else y=x.^2*cos(x); end')
[x,err]=intg(0,%pi,g)
