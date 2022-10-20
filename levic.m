function c=levic(a,b,c)
    if nargin>3 || nargin<2
        error('2 or 3 arguments are needed')
    elseif nargin==2 && (a<1 || a>2 || b<1 || b>2)
        error('arguments must be 1 or 2')
    elseif nargin==3 && (a<1 || a>3 || b<1 || b>3 || c<1 || c>3)
        error('arguments must be 1, 2 or 3')
    end

    switch nargin
        case 2
            if (a==1 && b==2)
                c=1;
            elseif (a==2 && b==1)
                c=-1;
            else
                c=0;
            end
        case 3
            if (a==1 && b==2 && c==3) || (a==2 && b==3 && c==1) || (a==3 && b==1 && c==2)
                c=1;
            elseif (a==1 && b==3 && c==2) || (a==2 && b==1 && c==3) || (a==3 && b==2 && c==1)
                c=-1;
            else
                c=0;
            end
    end
end

