function u=init(n)
	hx=(b-a)/n
	u=zeros(n+1,n+1)
	for j=1:n+1,
		x=a+(j-1)*hx
		fi=finf(x)
		fs=fsup(x)
		hy=(fs-fi)/n
		for i=1:n+1,
			y=fi+(i-1)*hy
			u(i,j)=fct(x,y)
		end
	end
endfunction



function v=tab(u)
	[m,n]=size(u)
	hx=(b-a)/(n-1)
	for j=1:n,
		for i=1:m,
			v(2*i-1,2*j-1)=u(i,j)
		end
		x=a+(j-1)*hx
		fi=finf(x)
		fs=fsup(x)
		hy=(fs-fi)/(m-1)
		for i=1:m-1,
			y=fi+hy*(i-0.5)
			v(2*i,2*j-1)=fct(x,y)
		end		
	end
	for j=1:m-1,
		x=a+(j-0.5)*hx
		fi=finf(x)
		fs=fsup(x)
		hy=(fs-fi)/(m-1)/2
		for i=1:2*n-1,
			y=fi+hy*(i-1)
			v(i,2*j)=fct(x,y)
		end	
	end
endfunction

function z=integ2(u)
	[m,n]=size(u)
	hx=(b-a)/(n-1)
	w=zeros(1,n)
	c=ones(1,n)
	if n==3 then
		c(2)=4
	else
		n0=(n-1)/2
		for j=1:n0-1,
			c(2*j+1)=2
		end		
	end
	for j=1:n,
		x=a+(j-1)*hx
		fi=finf(x)
		fs=fsup(x)
		hy=(fs-fi)/(m-1)
		w(j)=c*u(:,j)*hy/3
	end
	z=c*w'*hx/3
endfunction


function [integ,er]=integr(fct,a,b,finf,fsup,tol)
	n=3
	u=init(n)
	old=integ2(u)
	nmi=10
	cont=0
	ni=0
	while cont==0 do
		ni=ni+1
		v=tab(u)
		new=integ2(v)
		nrm=abs(new-old)
		old=new
		u=v
		if nrm<tol then
			cont=1
			er=0;
		else
			er=1
			if ni==nmi,cont=1;end
		end
	end
	integ=new
endfunction

