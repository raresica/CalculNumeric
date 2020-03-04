function lag=polyLagrange ( x , y , s )
    z=poly(0,s) ;
    [k ,n]= size ( x ) ;
    [k ,m]= size ( y ) ;
    if m~=n then
        lag ="Data error "
        return
    end
    v=zeros(1,n);
    w=zeros(1,n);
    for i=1:n do
        v(i)=y(i) ;
    end
    for k=1:n-1 do
        for i =1:n-k do
            w(i)=((z-x(i))*v(i+1)-(z-x(i+k))*v(i))/(x(i+k)-x(i));
        end
        for i=1:n-k do
            v(i)=w(i);
        end
    end
    lag=v(1);
endfunction
