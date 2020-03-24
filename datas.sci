function [fct,a,b,finf,fsup,tol]=datas()
	a=0;
	b=1;
	deff('z=fct(x,y)','z=2.*x/(sqrt(1+y^4-x^4))');
    deff('y=finf(x)','y=x');
    deff('y=fsup(x)','y=1');
	tol=1e-6;
endfunction
