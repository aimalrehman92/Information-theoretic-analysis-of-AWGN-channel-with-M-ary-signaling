function [A]= powerconstraints_opt(m)
    clear A
    if (m==2)
    A=-2:8;
    elseif (m==4)
    A=-2:0.5:15;
    elseif (m==8)
    A=2:18;
    elseif (m==16)
    A=3:1:30;
    elseif (m==32)
    A=3:1:60;
    elseif (m==64)
    A=3:1:80;
    elseif (m==128)
    A=3:1:120;
    else
    disp('Input too high');
    A=0;
    end

end
