function f=invFourierTransform(f,k)
    syms x real positive
    spi=sym(pi);
    kq=exp(1i*k*x);
    f=1/sqrt(2*spi)*int(kq*f,k,-inf,inf);

end