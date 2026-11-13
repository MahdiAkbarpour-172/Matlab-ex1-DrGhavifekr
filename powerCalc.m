function [P, S] = powerCalc(V, I, pf)
P = V * I * pf;
S = V * I;
end