function f=fct(x,t,y)
    u=f1(x,t)-y;
endfunction

function y=f1(x,t)
    y=x(1)*exp(x(2)*-t*t+x(3));
endfunction
