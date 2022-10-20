function [X, Y, Z, H]=heisenberg(d)
    if d==1
        syms x y z
        H=sym(zeros(d+2));
        H(1,2:end-1)=x;
        H(2:end-1,end)=y;
        H(1,end)=z;
        X=diff(H,x);
        Y=diff(H,y);
    else    
        syms x [1 d]
        syms y [1 d]
        syms z

        H=sym(zeros(d+2));
        H(1,2:end-1)=x;
        H(2:end-1,end)=y;
        H(1,end)=z;
        X=cell(1,d);
        Y=cell(1,d);
        for ii=1:d
            X{ii}=diff(H,x(ii));
            Y{ii}=diff(H,y(ii));
        end
    end
    
    Z=diff(H,z);
    

end
