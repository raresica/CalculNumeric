function coef=lq(m,x,y)
    [mx,nx]=size(x);
    [my,ny]=size(y);
    if((nx~=ny)|(mx~= 1)|(my~=1)),
        disp("data dimension error")
        abort
    end
    u=zeros(m+1,nx) ;
    for i=1:m+1 ,
        for j=1:nx ,
            u(i,j)=x(j)^(i-1);
        end
    end
    coef=(u*u')^(-1)*u*y';
endfunction
