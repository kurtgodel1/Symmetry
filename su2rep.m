%Every finite dimensional representation of SU(2)
%the only variable is j, others follow it

%2j+1 gives the dimension e.g. for 2D j=1/2

function [generators,label]=su2rep(j)
    %m is the eigenvalues of J3 and starts with the maximum eigenvalue
    j=sym(j);
    m=j:-1:-j;
    
    %J+ |b,m> = Cp |b,m+1> 
    Cp=sqrt(j*(j+1)-m.^2-m);
    
    %J- |b,m> = Cm |b,m-1> 
    Cm=sqrt(j*(j+1)-m.^2+m);
    
    %representation label
    b=j*(j+1);
    %J3 is diagonal and the values are m
    J3=diag(m);
    %eigenvectors of J3
    evec=eye(length(J3));
    %this is a little tricky, J+ moves the columns of evec to the right
    % and multiply each colum with Cp
    
    el=length(evec);
    
    %evec(:,[el 1:(el-1)]) gives evec with permuted to right
    Jp=(evec(:,[el 1:(el-1)])*diag(Cp))*inv(evec);
    %evec(:,[2:el 1]) gives evec with permuted to left
    Jm=(evec(:,[2:el 1])*diag(Cm))*inv(evec);
    %J1=1/2(J+ + J-) by definition
    J1=1/2*(Jp+Jm);
    %J1=1/2(J- - J+) by definition
    J2=1i/2*(Jm-Jp);
    generators={J1,J2,J3};
    label=j;
end



