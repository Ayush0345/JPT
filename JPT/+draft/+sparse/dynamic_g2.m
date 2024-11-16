function [g2_v, T_order, T] = dynamic_g2(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(10, 1);
end
[T_order, T] = draft.sparse.dynamic_g2_tt(y, x, params, steady_state, T_order, T);
g2_v = NaN(14, 1);
g2_v(1)=y(47)*(-((-(y(38)*y(40)))*(y(37)+y(37))))/(y(37)*y(37)*y(37)*y(37));
g2_v(2)=y(47)*(-y(40))/(y(37)*y(37));
g2_v(3)=y(47)*(-y(38))/(y(37)*y(37));
g2_v(4)=(-(y(38)*y(40)))/(y(37)*y(37));
g2_v(5)=y(47)*1/y(37);
g2_v(6)=y(40)/y(37);
g2_v(7)=y(38)/y(37);
g2_v(8)=y(62)*(-y(54))/(y(53)*y(53));
g2_v(9)=y(62)*1/y(53);
g2_v(10)=y(54)/y(53);
g2_v(11)=y(62)*(-((-(y(40)*y(54)))*(y(53)+y(53))))/(y(53)*y(53)*y(53)*y(53));
g2_v(12)=y(62)*(-y(40))/(y(53)*y(53));
g2_v(13)=(-(y(40)*y(54)))/(y(53)*y(53));
g2_v(14)=y(40)/y(53);
end
