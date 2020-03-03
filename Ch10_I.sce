/*pag 44
Sa se calculeze L(Pn, x0, x1, x2....xn; f)(z) pentru
f(x)=cos(x)
xi=i*pi/10 i apartine{0,1,2,3,4,5,6,7,8,9}
z=pi/7
*/
deff('y=fct(x)','y=cos(x)') 
exec('/Scoala Sem 2/CN-VladMonescu/lagrange.sci',-1) 

i=0:9; 
x=%pi/10*i
y=fct(x);
 z=[%pi/7];
  f=lagrange(z,x,y) 
  
