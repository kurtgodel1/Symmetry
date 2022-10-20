function [L,t] = calcheight(Numb)

% L : son boy
% t : Gün
% [L, t] = calcheight(Öğrenci numarası) şeklinde kullanılacak
% L ve t'yi verip küçük bir grafik çizdiriyor
    t=0;
    L=0;
    
    h = rem(Numb,10);
    g = rem(floor(Numb/10),10);
    f = rem(floor(Numb/100),10);
    
    T=[20+f, 20+g, 20+h];
    
    lim_height = 100 + 10*g + h;
     
    while L < lim_height
        t = t+1;
        ind = rem(t,3);
        if ind == 0
            ind = 3;
        end
        DL = T(ind)/3*exp(-0.04*t);
        L = L + DL;
        M(t) = L;
    end
    
    x = 1:length(M);
    plot(x,M,'-o')
    hold on
    yline(lim_height,'r')
    ylim([0 1.3*lim_height]);
    hold off
    display([L,t])
end
