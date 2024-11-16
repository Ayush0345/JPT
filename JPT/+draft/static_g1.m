function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = draft.static_g1_tt(T, y, x, params);
end
g1 = zeros(36, 36);
g1(1,1)=1;
g1(1,2)=(-((params(43)+params(38))/params(43)*params(1)));
g1(1,3)=(-((params(43)+params(38))/params(43)*(1-params(1))));
g1(2,2)=1;
g1(2,3)=(-1);
g1(2,4)=1;
g1(2,5)=(-1);
g1(3,4)=(-params(1));
g1(3,5)=(-(1-params(1)));
g1(3,6)=1;
g1(4,6)=(-params(33));
g1(4,7)=T(10);
g1(5,8)=(-(T(4)+T(2)-T(3)));
g1(5,9)=1;
g1(5,32)=(-T(5));
g1(6,7)=1;
g1(6,10)=(-1);
g1(6,32)=1;
g1(7,4)=1;
g1(7,11)=(-params(15));
g1(8,4)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,9)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,12)=1-params(11)*(1-params(2))*exp((-params(5)));
g1(8,32)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(9,9)=1;
g1(9,12)=(-1);
g1(9,32)=(-(params(16)*params(11)*exp(2*params(5))-exp(2*params(5))*params(16)));
g1(9,35)=(-1);
g1(10,2)=1;
g1(10,11)=(-1);
g1(10,14)=(-1);
g1(10,32)=1;
g1(11,13)=(-(1-(1-params(2))*exp((-params(5)))));
g1(11,14)=1-(1-params(2))*exp((-params(5)));
g1(11,32)=(1-params(2))*exp((-params(5)));
g1(11,35)=(-(1-(1-params(2))*exp((-params(5)))));
g1(12,5)=T(9);
g1(12,7)=(-(params(11)*params(11)+T(7)-(1+params(11)*params(4)/(1+params(11)))));
g1(12,16)=params(59);
g1(12,32)=(-(T(7)-(1+params(11)*params(4)-params(11)*params(22))/(1+params(11))));
g1(13,3)=params(12);
g1(13,5)=(-1);
g1(13,9)=(-1);
g1(13,16)=1;
g1(13,33)=1;
g1(14,7)=(-((1-params(20))*params(17)));
g1(14,10)=1-params(20);
g1(14,15)=(-((1-params(20))*params(18)));
g1(14,30)=(-((1-params(20))*(-params(18))));
g1(14,36)=(-1);
g1(15,1)=(-(1-y(11)*(-(y(2)*y(4)))/(y(1)*y(1))));
g1(15,2)=y(11)*y(4)/y(1);
g1(15,4)=y(11)*y(2)/y(1);
g1(15,11)=y(2)*y(4)/y(1);
g1(15,15)=1;
g1(16,1)=T(8);
g1(16,8)=(-(params(45)/params(43)));
g1(16,11)=(-(params(34)*params(42)/params(43)));
g1(16,13)=(-(params(44)/params(43)));
g1(16,34)=(-T(8));
g1(17,17)=1;
g1(17,18)=(-(params(1)*(params(54)+params(49))/params(54)));
g1(17,19)=(-((1-params(1))*(params(54)+params(49))/params(54)));
g1(18,18)=1;
g1(18,19)=(-1);
g1(18,20)=1;
g1(18,21)=(-1);
g1(19,20)=(-params(1));
g1(19,21)=(-(1-params(1)));
g1(20,7)=T(10);
g1(20,22)=(-params(33));
g1(21,23)=(-(T(4)+T(2)-T(3)));
g1(21,24)=1;
g1(21,32)=(-T(5));
g1(22,7)=1;
g1(22,25)=(-1);
g1(22,32)=1;
g1(23,20)=1;
g1(23,26)=(-params(15));
g1(24,20)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,24)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,27)=1-params(11)*(1-params(2))*exp((-params(5)));
g1(24,32)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(25,24)=1;
g1(25,27)=(-1);
g1(25,32)=(-(params(16)*params(11)*exp(2*params(5))-exp(2*params(5))*params(16)));
g1(25,35)=(-1);
g1(26,18)=1;
g1(26,26)=(-1);
g1(26,29)=(-1);
g1(26,32)=1;
g1(27,28)=(-(1-(1-params(2))*exp((-params(5)))));
g1(27,29)=1-(1-params(2))*exp((-params(5)));
g1(27,32)=(1-params(2))*exp((-params(5)));
g1(27,35)=(-(1-(1-params(2))*exp((-params(5)))));
g1(28,7)=(-(params(11)*params(11)+T(7)-(1+params(11)*params(4)/(1+params(11)))));
g1(28,21)=T(9);
g1(28,31)=params(59);
g1(28,32)=(-(T(7)-(1+params(11)*params(4)-params(11)*params(22))/(1+params(11))));
g1(29,19)=params(12);
g1(29,21)=(-1);
g1(29,24)=(-1);
g1(29,31)=1;
g1(29,33)=1;
g1(30,4)=y(26)*y(18)/y(17);
g1(30,17)=(-(1-y(26)*(-(y(4)*y(18)))/(y(17)*y(17))));
g1(30,18)=y(26)*y(4)/y(17);
g1(30,26)=y(4)*y(18)/y(17);
g1(30,30)=1;
g1(31,17)=T(8);
g1(31,23)=(-(params(56)/params(54)));
g1(31,26)=(-(params(34)*params(53)/params(54)));
g1(31,28)=(-(params(55)/params(54)));
g1(31,34)=(-T(8));
g1(32,32)=1-params(22);
g1(33,35)=1-params(24);
g1(34,36)=1-params(21);
g1(35,34)=1-params(23);

end
