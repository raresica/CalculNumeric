--> A=[3,4,7,-2;5,4,9,3;1,-1,0,3;1,-1,0,0]
 A  = 

   3.   4.   7.  -2.
   5.   4.   9.   3.
   1.  -1.   0.   3.
   1.  -1.   0.   0.

--> 

--> [Q,R]=qr(A)
 Q  = 

  -0.5         0.5        -0.7071068   6.245D-17
  -0.8333333  -0.0555556   0.5499719  -3.932D-17
  -0.1666667  -0.6111111  -0.3142697  -0.7071068
  -0.1666667  -0.6111111  -0.3142697   0.7071068
 R  = 

  -6.  -5.  -11.        -2.       
   0.   3.   3.         -3.       
   0.   0.   6.280D-16   2.1213203
   0.   0.   0.         -2.1213203

--> Q*R-A
 ans  =

   0.   1.776D-15   0.          0.       
   0.   1.776D-15   0.         -4.441D-16
   0.   5.551D-16  -2.467D-17   0.       
   0.   5.551D-16  -2.467D-17  -5.056D-16
