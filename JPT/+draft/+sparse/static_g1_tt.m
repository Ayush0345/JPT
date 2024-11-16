function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = draft.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 10
    T = [T; NaN(10 - size(T, 1), 1)];
end
T(9) = 1-(1/(1+params(11))+params(11)/(1+params(11)));
T(10) = 1-(params(11)/(1+params(11)*params(3))+params(3)/(1+params(11)*params(3)));
end
