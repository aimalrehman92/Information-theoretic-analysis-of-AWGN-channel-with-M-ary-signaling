
%Estimation of the capacity of the AWGN channel

%Code Author: Aimal Rehman
%COMSATS Institute of Information Tech, Lahore, Pakistan.
csd = 1;

M = input('Enter the modulation level M for M-ary signaling (e.g. 2,4,8...) : ');

PsdB= powerconstraints_opt(M); %correcponding to modulation level, we obtain reasonable power levels

var=1;

for ii = 1:length(PsdB) %for all the power levels, we will obtain the corresponding constellation points
    Ps = 10^(PsdB(ii)/10);  %conversion to linear scale
    Psg=ConstellationPoints_opt(M,sqrt(Ps)); %obtain the constellation points
    Cd(ii)=direct_opt_git(Psg,var); %get the corresponding level of channel capacity
end

plot(PsdB, Cd);
grid;