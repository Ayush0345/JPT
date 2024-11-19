function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(9, 1);
lhs = NaN(36, 1);
rhs = NaN(36, 1);
T(1) = params(11)/(1+params(11)*params(3))*y(79)+params(3)/(1+params(11)*params(3))*y(7);
T(2) = 1+params(11)*params(4)/(1+params(11));
T(3) = (1+params(11)*params(4)-params(11)*params(22))/(1+params(11));
T(4) = 1/params(32);
T(5) = exp(params(5))*params(6)*params(11)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(6) = (exp(2*params(5))+params(11)*params(6)^2)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(7) = exp(params(5))*params(6)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(8) = (exp(params(5))*params(6)*params(11)*params(22)-exp(params(5))*params(6))/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(9) = y(68)*T(8);
lhs(1) = y(37);
rhs(1) = (params(43)+params(38))/params(43)*(params(1)*y(38)+(1-params(1))*y(39));
lhs(2) = y(40);
rhs(2) = y(39)+y(41)-y(38);
lhs(3) = y(42);
rhs(3) = params(1)*y(40)+(1-params(1))*y(41);
lhs(4) = y(43);
rhs(4) = T(1)+y(42)*params(33)+params(33)*params(7);
lhs(5) = y(45);
rhs(5) = y(80)*T(5)-y(44)*T(6)+y(8)*T(7)+T(9);
lhs(6) = y(45);
rhs(6) = y(46)+y(81)-y(104)-y(79);
lhs(7) = y(40);
rhs(7) = params(15)*y(47);
lhs(8) = y(48);
rhs(8) = params(11)*(1-params(2))*exp((-params(5)))*(y(84)-y(104))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(81)-y(104)+y(76));
lhs(9) = y(45);
rhs(9) = y(48)+y(71)-exp(2*params(5))*params(16)*(y(68)+y(49)-y(13))+params(16)*params(11)*exp(2*params(5))*(y(104)+y(85)-y(49));
lhs(10) = y(38);
rhs(10) = y(47)+y(14)-y(68);
lhs(11) = y(50);
rhs(11) = (1-params(2))*exp((-params(5)))*(y(14)-y(68))+(1-(1-params(2))*exp((-params(5))))*(y(71)+y(49));
lhs(12) = y(41);
rhs(12) = 1/(1+params(11))*y(5)+params(11)/(1+params(11))*y(77)-params(59)*y(52)+y(7)*params(4)/(1+params(11))-y(43)*T(2)+y(79)*params(11)*params(11)+params(4)/(1+params(11))*y(32)-y(68)*T(3);
lhs(13) = y(52);
rhs(13) = y(41)-(y(39)*params(12)+y(69)-y(45));
lhs(14) = y(46);
rhs(14) = params(20)*y(10)+(1-params(20))*(y(43)*params(17)+params(18)*(y(51)-y(66)))+params(19)*(y(51)-y(15)-(y(66)-y(30)))+y(72);
lhs(15) = y(51);
rhs(15) = y(37)-y(47)*y(38)*y(40)/y(37);
lhs(16) = y(37)*T(4);
rhs(16) = T(4)*y(70)+y(44)*params(45)/params(43)+y(49)*params(44)/params(43)+y(47)*params(34)*params(42)/params(43);
lhs(17) = y(53);
rhs(17) = (params(54)+params(49))/params(54)*(params(1)*y(54)+(1-params(1))*y(55));
lhs(18) = y(56);
rhs(18) = y(55)+y(57)-y(54);
lhs(19) = 0;
rhs(19) = params(1)*y(56)+(1-params(1))*y(57);
lhs(20) = y(43);
rhs(20) = params(33)*params(7)+T(1)+params(33)*y(58);
lhs(21) = y(60);
rhs(21) = T(9)+y(95)*T(5)-y(59)*T(6)+y(23)*T(7);
lhs(22) = y(60);
rhs(22) = y(61)+y(96)-y(104)-y(79);
lhs(23) = y(56);
rhs(23) = params(15)*y(62);
lhs(24) = y(63);
rhs(24) = params(11)*(1-params(2))*exp((-params(5)))*(y(99)-y(104))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(96)-y(104)+y(92));
lhs(25) = y(60);
rhs(25) = y(71)+y(63)-exp(2*params(5))*params(16)*(y(68)+y(64)-y(28))+params(16)*params(11)*exp(2*params(5))*(y(104)+y(100)-y(64));
lhs(26) = y(54);
rhs(26) = y(62)+y(29)-y(68);
lhs(27) = y(65);
rhs(27) = (1-params(2))*exp((-params(5)))*(y(29)-y(68))+(1-(1-params(2))*exp((-params(5))))*(y(71)+y(64));
lhs(28) = y(57);
rhs(28) = params(4)/(1+params(11))*y(32)+y(79)*params(11)*params(11)+y(7)*params(4)/(1+params(11))+1/(1+params(11))*y(21)+params(11)/(1+params(11))*y(93)-params(59)*y(67)-y(43)*T(2)-y(68)*T(3);
lhs(29) = y(67);
rhs(29) = y(57)-(y(69)+params(12)*y(55)-y(60));
lhs(30) = y(66);
rhs(30) = y(53)-y(62)*y(40)*y(54)/y(53);
lhs(31) = T(4)*y(53);
rhs(31) = T(4)*y(70)+y(59)*params(56)/params(54)+y(64)*params(55)/params(54)+y(62)*params(34)*params(53)/params(54);
lhs(32) = y(68);
rhs(32) = params(22)*y(32)+x(1);
lhs(33) = y(71);
rhs(33) = params(24)*y(35)+x(2);
lhs(34) = y(72);
rhs(34) = params(21)*y(36)+x(3);
lhs(35) = y(70);
rhs(35) = params(23)*y(34)+x(4);
lhs(36) = params(7);
rhs(36) = params(7)*params(25)+x(5);
end