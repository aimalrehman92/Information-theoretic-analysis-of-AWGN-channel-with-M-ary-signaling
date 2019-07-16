%constellation points

function [symbols]=ConstellationPoints_opt(m,A)
clear symbols
symbols=pammod(0:m-1,m); %generate signal of m-pam
norm=m/sum(symbols.^2);
[xg Ag]=ndgrid(symbols,A); %xg is symbol, Ag is the symbol power
symbols=(sqrt(norm))*xg.*Ag;
end
