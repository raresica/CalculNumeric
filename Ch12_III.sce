x=[-0.5 , 0, 0.5];
exec('D:\Scoala Sem 2\CN-VladMonescu\Levenberg-Marquardt.sci',-1)
[xopt,v]=lsqrsolve(x,fctlm,10)
