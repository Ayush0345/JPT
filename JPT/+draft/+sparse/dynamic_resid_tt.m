function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(1) = params(11)/(1+params(11)*params(3))*y(79)+params(3)/(1+params(11)*params(3))*y(7);
T(2) = 1+params(11)*params(4)/(1+params(11));
T(3) = (1+params(11)*params(4)-params(11)*params(22))/(1+params(11));
T(4) = 1/params(32);
T(5) = exp(params(5))*params(6)*params(11)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(6) = (exp(2*params(5))+params(11)*params(6)^2)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(7) = exp(params(5))*params(6)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(8) = (exp(params(5))*params(6)*params(11)*params(22)-exp(params(5))*params(6))/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(9) = y(68)*T(8);
end
