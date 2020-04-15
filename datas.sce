/**function [fct,a,b,finf,fsup,tol]=datas()
	a=(3-sqrt(5))/2;
	b=(3+sqrt(5))/2;
	deff('z=fct(x,y)','z=x/(x^2+y^2)')
	deff('y=finf(x)','y=(x-1)^2');
	deff('y=fsup(x)','y=x');
	tol=1e-6;
endfunction
**/

function [fct,a,b,finf,fsup,tol]=datas()
	a=0;
	b=1;
	deff('z=fct(x,y)','z=2.*x/(sqrt(1+y^4-x^4))');
    deff('y=finf(x)','y=x');
    deff('y=fsup(x)','y=1');
	tol=1e-6;
endfunction
