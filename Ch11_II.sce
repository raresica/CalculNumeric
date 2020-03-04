/* Sa se calculeze jacobianul si hessianul functiilor in punctul indicat: 
f(x,y)= x^2+y^2-1
        x^3-y
        
        (x,y)=(1,2)
        
        */

deff('q=fct(p)', ['x=p(1)','y=p(2)','q(1)=x.^2+y.^2-1','q(2)=x.^3-y'])
p=[1,2]
[J,H]=numderivative(fct,p)
