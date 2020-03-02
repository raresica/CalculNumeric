//Sa se rezolve sistemele algebrice de ecuatii liniare

--> B=[1,2,3,4;2,-3,5,-2;3,4,-2,-1;4,-1,6,-3];

--> c=[30;3;1;8];

--> det(B)
 ans  =

  -126.00000

--> x=inv(B)*c
 x  = 

   1.
   2.
   3.
   4.
   [x,k]=linsolve(B,-c)
