function aplicatia(Rares)
	exec('D:\Scoala Sem 2\CN-VladMonescu\datas.sci',-1)
	exec('D:\Scoala Sem 2\CN-VladMonescu\integr.sci',-1)
	[fct,a,b,finf,fsup,tol]=datas();
	[integr,er]=integr(fct,a,b,finf,fsup,tol);
	printf('error_code=%d\n',er)
	printf('computed_integral=%f\n',integr)
endfunction


