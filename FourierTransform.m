function f=FourierTransform(f,x)
    syms k real positive
    spi=sym(pi);
    kq=exp(-1i*k*x);
    f=1/sqrt(2*spi)*int(kq*f,x,-inf,inf);

end

