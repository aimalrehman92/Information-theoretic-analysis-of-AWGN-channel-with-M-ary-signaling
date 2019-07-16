%Function description:
%Calculates the capacity of direct link
%x: source symbols
%m=alphabet size

%Code Author: Aimal Rehman
%COMSATS Institute of Information Tech, Lahore, Pakistan.

function [rate,var]=direct_opt(xs,var)

clear pYdgX pyd information_factor rate Pxs

Pxs=1/length(xs);
sigma2=sqrt(var); %std. deviation

dy=0.1; %step size
ydmax=150;
yd=-ydmax:dy:ydmax; %possible values of the received symbol

%-------PYdgX----------%
for s=1:length(xs)
    pYdgX(s,:)=normpdf(yd,xs(s),sigma2);
end

%-------pyd------------%
pyd = (Pxs)*(nansum(pYdgX));

if (abs(sum(pyd)*dy-1) > 0.0001)
        disp('Error in calculation : p(yd)');
    end
%----------------------%

for j=1:length(yd)
    information_factor(j)=0;
     k=1:length(xs);
    information_factor(j)=information_factor(j)+nansum((1/length(xs))*pYdgX(:,j).*log2(pYdgX(:,j)/pyd(j)));
end
rate=nansum(information_factor)*dy; %Achievable rate for direct link
end