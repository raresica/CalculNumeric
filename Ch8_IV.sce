/*
Sa se rezolve sistemele algebrice  de ecuatii liniare incompatibile in sensul celor mai mici patrate:
x1 − 3x2 + x3 + x4 = 1
x1 − 3x2 + x3 − 2x4 = −1
x1 − 3x2 + x3 + 5x4 = 6
*/

A=[1, -3, 1, 1;1, -3, +1, -2;1, -3, 1, +5];
b=[1;-1;6];
det(A)
x=lsq(A,b)
linsolve(A,-b)
