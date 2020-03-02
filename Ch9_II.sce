//II. S̆a se rezolve ecua̧tiile algebrice:
//lnx = x2 −1
//f(x)=lnx-x2+1

deff('y=f(x)','y=log(x)-x.^2+1')
Warning : redefining function: f                       . Use funcprot(0) to avoid this message

--> [x,y,info]= fsolve(1,f)
 x  = 

   1.
 y  = 

   0.
 info  = 

   4.

--> [x,y,info]= fsolve(0.01,f)
 x  = 

   0.4507637
 y  = 

   0.
 info  = 

   1.

--> [x,y,info]= fsolve(0.001,f)
 x  = 

   0.4507637
 y  = 

   1.110D-16
 info  = 

   1.

--> x=0.001:0.001:5;

--> y=f(x)
plot2d(x,y)

--> [x,y,info]= fsolve(0.001,f)
 x  = 

   0.4507637
 y  = 

   1.110D-16
 info  = 

   1.
   CAND info=1 inseamna ca am gasit solutia

--> [x,y,info]= fsolve(2,f)
 x  = 

   1.
 y  = 

   0.
 info  = 

   1.
