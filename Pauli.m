function [s1,s2,s3,p]=Pauli()
    %Pauli matrices
    s1=sym([0 1;
            1 0]);

    s2=sym([0 -1i;
            1i  0]);

    s3=sym([1 0;
            0 -1]);

    p={s1,s2,s3};
end

