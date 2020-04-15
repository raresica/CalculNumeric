function aplicatia(cale)
	exec('D:\Scoala Sem 2\CN-VladMonescu\Ch13_II\datas.sce',-1)
	exec('D:\Scoala Sem 2\CN-VladMonescu\Ch13_II\integr.sce',-1)
	[fct,a,b,finf,fsup,tol]=datas();
	[integr,er]=integr(fct,a,b,finf,fsup,tol);
	printf('error_code=%d\n',er)
	printf('computed_integral=%f\n',integr)
endfunction


/**
--> exec('C:\Scilab CN\Capitol 13\II.3\datas.sce', -1)

--> exec('C:\Scilab CN\Capitol 13\II.3\aplicatia.sce', -1)

--> aplicatia('C:\Scilab CN\Capitol 13\II.3')
error_code=0
computed_integral=0.259734
**/
