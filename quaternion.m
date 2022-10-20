function q=quaternion(a,b,c,d)
    I=eye(2);

    i=[0 1;
      -1 0];

    j=[0  1i;
       1i  0];

    k=[1i  0;
        0 -1i];
    
    q=a*I+b*i+c*j+d*k;
end
