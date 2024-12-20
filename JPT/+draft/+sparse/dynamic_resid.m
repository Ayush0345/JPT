function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(9, 1);
end
[T_order, T] = draft.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(36, 1);
    residual(1) = (y(37)) - ((params(43)+params(38))/params(43)*(params(1)*y(38)+(1-params(1))*y(39)));
    residual(2) = (y(40)) - (y(39)+y(41)-y(38));
    residual(3) = (y(42)) - (params(1)*y(40)+(1-params(1))*y(41));
    residual(4) = (y(43)) - (T(1)+y(42)*params(33)+params(33)*params(7));
    residual(5) = (y(45)) - (y(80)*T(5)-y(44)*T(6)+y(8)*T(7)+T(9));
    residual(6) = (y(45)) - (y(46)+y(81)-y(104)-y(79));
    residual(7) = (y(40)) - (params(15)*y(47));
    residual(8) = (y(48)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(84)-y(104))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(81)-y(104)+y(76)));
    residual(9) = (y(45)) - (y(48)+y(71)-exp(2*params(5))*params(16)*(y(68)+y(49)-y(13))+params(16)*params(11)*exp(2*params(5))*(y(104)+y(85)-y(49)));
    residual(10) = (y(38)) - (y(47)+y(14)-y(68));
    residual(11) = (y(50)) - ((1-params(2))*exp((-params(5)))*(y(14)-y(68))+(1-(1-params(2))*exp((-params(5))))*(y(71)+y(49)));
    residual(12) = (y(41)) - (1/(1+params(11))*y(5)+params(11)/(1+params(11))*y(77)-params(59)*y(52)+y(7)*params(4)/(1+params(11))-y(43)*T(2)+y(79)*params(11)*params(11)+params(4)/(1+params(11))*y(32)-y(68)*T(3));
    residual(13) = (y(52)) - (y(41)-(y(39)*params(12)+y(69)-y(45)));
    residual(14) = (y(46)) - (params(20)*y(10)+(1-params(20))*(y(43)*params(17)+params(18)*(y(51)-y(66)))+params(19)*(y(51)-y(15)-(y(66)-y(30)))+y(72));
    residual(15) = (y(51)) - (y(37)-y(47)*y(38)*y(40)/y(37));
    residual(16) = (y(37)*T(4)) - (T(4)*y(70)+y(44)*params(45)/params(43)+y(49)*params(44)/params(43)+y(47)*params(34)*params(42)/params(43));
    residual(17) = (y(53)) - ((params(54)+params(49))/params(54)*(params(1)*y(54)+(1-params(1))*y(55)));
    residual(18) = (y(56)) - (y(55)+y(57)-y(54));
    residual(19) = (0) - (params(1)*y(56)+(1-params(1))*y(57));
    residual(20) = (y(43)) - (params(33)*params(7)+T(1)+params(33)*y(58));
    residual(21) = (y(60)) - (T(9)+y(95)*T(5)-y(59)*T(6)+y(23)*T(7));
    residual(22) = (y(60)) - (y(61)+y(96)-y(104)-y(79));
    residual(23) = (y(56)) - (params(15)*y(62));
    residual(24) = (y(63)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(99)-y(104))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(96)-y(104)+y(92)));
    residual(25) = (y(60)) - (y(71)+y(63)-exp(2*params(5))*params(16)*(y(68)+y(64)-y(28))+params(16)*params(11)*exp(2*params(5))*(y(104)+y(100)-y(64)));
    residual(26) = (y(54)) - (y(62)+y(29)-y(68));
    residual(27) = (y(65)) - ((1-params(2))*exp((-params(5)))*(y(29)-y(68))+(1-(1-params(2))*exp((-params(5))))*(y(71)+y(64)));
    residual(28) = (y(57)) - (params(4)/(1+params(11))*y(32)+y(79)*params(11)*params(11)+y(7)*params(4)/(1+params(11))+1/(1+params(11))*y(21)+params(11)/(1+params(11))*y(93)-params(59)*y(67)-y(43)*T(2)-y(68)*T(3));
    residual(29) = (y(67)) - (y(57)-(y(69)+params(12)*y(55)-y(60)));
    residual(30) = (y(66)) - (y(53)-y(62)*y(40)*y(54)/y(53));
    residual(31) = (T(4)*y(53)) - (T(4)*y(70)+y(59)*params(56)/params(54)+y(64)*params(55)/params(54)+y(62)*params(34)*params(53)/params(54));
    residual(32) = (y(68)) - (params(22)*y(32)+x(1));
    residual(33) = (y(71)) - (params(24)*y(35)+x(2));
    residual(34) = (y(72)) - (params(21)*y(36)+x(3));
    residual(35) = (y(70)) - (params(23)*y(34)+x(4));
    residual(36) = (params(7)) - (params(7)*params(25)+x(5));
end
