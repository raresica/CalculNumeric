function f=lagrange(xd,x,y)
    [mx,nx]=size(x);
    [my,ny]=size(y);
    ierror=0;
    if (nx~=ny)|(mx~=1)|(my~=1), 
     ierror=1; 
     disp( 'data dimension error ') 
     abort 
   end 
    xx=gsort(x); 
    for k=1:nx-1, 
      if xx(k)==xx(k+1), 
        ierror=1; 
        break, 
      end 
    end 
    if ierror~=0, 
      disp( 'data error ') 
      abort 
    end 
    [m,n]=size(xd); 
    f=zeros(m,n); 
    p=zeros(m,n); 
    q=zeros(m,n); 
    w=ones(1 ,nx); 
     for i =1:nx, 
      for j =1:nx, 
       if i~=j , 
         w( i)=w( i )*(x( i)-x( j )) , 
       end 
      end 
     end 
     for i =1:m, 
      for j =1:n, 
       u=find(x==xd(i , j )); 
       if ~isempty(u) , 
         f (i , j)=y(u); 
        else 
          for k=1:nx, 
            p(i , j)=p(i , j)+y(k)/(xd(i , j)-x(k))/w(k); 
            q(i , j)=q(i , j )+1/(xd(i , j)-x(k))/w(k); 
          end 
          f (i , j)=p(i , j )/q(i , j ); 
        end 
       end 
     end 
endfunction
