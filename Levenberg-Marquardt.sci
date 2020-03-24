function u=fctlm(x,m)
    [t,y]=data(m);
    u=f1(x,t)-y;
endfunction

function y=f1(x,t)
    y=x(1)*exp(x(2)*-t.*t+x(3));
endfunction

function [t,y]=data(m)
    t=0:9
    y=2*exp(-t.*t)
endfunction
