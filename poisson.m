function f=poisson(f1,f2,d)
    if d==1
        syms q p
        f=diff(f1,q)*diff(f2,p)-diff(f1,p)*diff(f2,q);
    else
        syms q p [1 d]
        f=0;
        for ii=1:d
            f=f+diff(f1,q(ii))*diff(f2,p(ii))-diff(f1,p(ii))*diff(f2,q(ii));
        end
    end
end
