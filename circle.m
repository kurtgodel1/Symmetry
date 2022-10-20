function circle(k)
    fplot(@(x) sqrt(k-x.^2),[-k k])
    hold on
    fplot(@(x) -sqrt(k-x.^2),[-k k])
    axis([-1.1*k 1.1*k -1.1*k 1.1*k])
    hold off
end