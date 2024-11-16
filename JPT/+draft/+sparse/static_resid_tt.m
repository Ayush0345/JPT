function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 8
    T = [T; NaN(8 - size(T, 1), 1)];
end
T(1) = y(7)*params(11)/(1+params(11)*params(3))+y(7)*params(3)/(1+params(11)*params(3));
T(2) = exp(params(5))*params(6)*params(11)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(3) = (exp(2*params(5))+params(11)*params(6)^2)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(4) = exp(params(5))*params(6)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(5) = (exp(params(5))*params(6)*params(11)*params(22)-exp(params(5))*params(6))/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(6) = y(32)*T(5);
T(7) = params(4)/(1+params(11));
T(8) = 1/params(32);
end
