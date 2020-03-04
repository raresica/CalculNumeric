/* Sa se calculeze derivatele functiilor in punctul indicat:
f(x)=x-2cos x    x0=1
*/

deff('y=f(x)','y=x-2.*cos(x)')
numderivative(f,1)
[d1,d2]=numderivative(f,1)
