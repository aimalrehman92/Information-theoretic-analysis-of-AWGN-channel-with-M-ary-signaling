function [qfunction]=Qfunction_opt(point,sigma)
qfunction=(1/2)*erfc((point/(sigma*sqrt(2))));
end
