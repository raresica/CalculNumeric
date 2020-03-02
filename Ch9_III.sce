/*pag 37
Sa se rezolve sistemele algebrice de ecuatii neliniare
x+x^2-2yz-0.1=0
y-y^2+3xz+0.2=0
z-z^2+2xy-0.3=0
*/

deff(’q=f(p)’,[’x=p(1)’,’y=p(2)’,’z=p(3)’,
 ’q(1)=x+x.^2-2*y.*z-0.1’,
 ’q(2)=y-y.^2+3*x.*z+0.2’,
 ’q(3)=z+z.^2+2*x.*y-0.3’])
p0=[0;0;0]; 
[p,q,info]=fsolve(p0,f)
