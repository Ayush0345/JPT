function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = draft.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(36, 71);
g1(1,17)=1;
g1(1,18)=(-((params(43)+params(38))/params(43)*params(1)));
g1(1,19)=(-((params(43)+params(38))/params(43)*(1-params(1))));
g1(2,18)=1;
g1(2,19)=(-1);
g1(2,20)=1;
g1(2,21)=(-1);
g1(3,20)=(-params(1));
g1(3,21)=(-(1-params(1)));
g1(3,22)=1;
g1(4,22)=(-params(33));
g1(4,2)=(-(params(3)/(1+params(11)*params(3))));
g1(4,23)=1;
g1(4,55)=(-(params(11)/(1+params(11)*params(3))));
g1(5,3)=(-T(7));
g1(5,24)=T(6);
g1(5,56)=(-T(5));
g1(5,25)=1;
g1(5,48)=(-T(8));
g1(6,55)=1;
g1(6,25)=1;
g1(6,57)=(-1);
g1(6,26)=(-1);
g1(6,66)=1;
g1(7,20)=1;
g1(7,27)=(-params(15));
g1(8,53)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,57)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(8,28)=1;
g1(8,58)=(-(params(11)*(1-params(2))*exp((-params(5)))));
g1(8,66)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(9,25)=1;
g1(9,28)=(-1);
g1(9,5)=(-(exp(2*params(5))*params(16)));
g1(9,29)=(-((-(exp(2*params(5))*params(16)))-params(16)*params(11)*exp(2*params(5))));
g1(9,59)=(-(params(16)*params(11)*exp(2*params(5))));
g1(9,48)=exp(2*params(5))*params(16);
g1(9,66)=(-(params(16)*params(11)*exp(2*params(5))));
g1(9,51)=(-1);
g1(10,18)=1;
g1(10,27)=(-1);
g1(10,6)=(-1);
g1(10,48)=1;
g1(11,29)=(-(1-(1-params(2))*exp((-params(5)))));
g1(11,6)=(-((1-params(2))*exp((-params(5)))));
g1(11,30)=1;
g1(11,48)=(1-params(2))*exp((-params(5)));
g1(11,51)=(-(1-(1-params(2))*exp((-params(5)))));
g1(12,1)=(-(1/(1+params(11))));
g1(12,21)=1;
g1(12,54)=(-(params(11)/(1+params(11))));
g1(12,2)=T(10);
g1(12,23)=T(2);
g1(12,55)=(-(params(11)*params(11)));
g1(12,32)=params(59);
g1(12,13)=T(10);
g1(12,48)=T(3);
g1(13,19)=params(12);
g1(13,21)=(-1);
g1(13,25)=(-1);
g1(13,32)=1;
g1(13,49)=1;
g1(14,23)=(-((1-params(20))*params(17)));
g1(14,4)=(-params(20));
g1(14,26)=1;
g1(14,7)=params(19);
g1(14,31)=(-(params(19)+(1-params(20))*params(18)));
g1(14,12)=(-params(19));
g1(14,46)=(-((1-params(20))*(-params(18))-params(19)));
g1(14,52)=(-1);
g1(15,17)=(-(1-y(27)*(-(y(18)*y(20)))/(y(17)*y(17))));
g1(15,18)=y(27)*y(20)/y(17);
g1(15,20)=y(27)*y(18)/y(17);
g1(15,27)=y(18)*y(20)/y(17);
g1(15,31)=1;
g1(16,17)=T(4);
g1(16,24)=(-(params(45)/params(43)));
g1(16,27)=(-(params(34)*params(42)/params(43)));
g1(16,29)=(-(params(44)/params(43)));
g1(16,50)=(-T(4));
g1(17,33)=1;
g1(17,34)=(-(params(1)*(params(54)+params(49))/params(54)));
g1(17,35)=(-((1-params(1))*(params(54)+params(49))/params(54)));
g1(18,34)=1;
g1(18,35)=(-1);
g1(18,36)=1;
g1(18,37)=(-1);
g1(19,36)=(-params(1));
g1(19,37)=(-(1-params(1)));
g1(20,2)=(-(params(3)/(1+params(11)*params(3))));
g1(20,23)=1;
g1(20,55)=(-(params(11)/(1+params(11)*params(3))));
g1(20,38)=(-params(33));
g1(21,9)=(-T(7));
g1(21,39)=T(6);
g1(21,62)=(-T(5));
g1(21,40)=1;
g1(21,48)=(-T(8));
g1(22,55)=1;
g1(22,40)=1;
g1(22,63)=(-1);
g1(22,41)=(-1);
g1(22,66)=1;
g1(23,36)=1;
g1(23,42)=(-params(15));
g1(24,60)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,63)=(-(1-params(11)*(1-params(2))*exp((-params(5)))));
g1(24,43)=1;
g1(24,64)=(-(params(11)*(1-params(2))*exp((-params(5)))));
g1(24,66)=(-((-(params(11)*(1-params(2))*exp((-params(5)))))-(1-params(11)*(1-params(2))*exp((-params(5))))));
g1(25,40)=1;
g1(25,43)=(-1);
g1(25,10)=(-(exp(2*params(5))*params(16)));
g1(25,44)=(-((-(exp(2*params(5))*params(16)))-params(16)*params(11)*exp(2*params(5))));
g1(25,65)=(-(params(16)*params(11)*exp(2*params(5))));
g1(25,48)=exp(2*params(5))*params(16);
g1(25,66)=(-(params(16)*params(11)*exp(2*params(5))));
g1(25,51)=(-1);
g1(26,34)=1;
g1(26,42)=(-1);
g1(26,11)=(-1);
g1(26,48)=1;
g1(27,44)=(-(1-(1-params(2))*exp((-params(5)))));
g1(27,11)=(-((1-params(2))*exp((-params(5)))));
g1(27,45)=1;
g1(27,48)=(1-params(2))*exp((-params(5)));
g1(27,51)=(-(1-(1-params(2))*exp((-params(5)))));
g1(28,2)=T(10);
g1(28,23)=T(2);
g1(28,55)=(-(params(11)*params(11)));
g1(28,8)=(-(1/(1+params(11))));
g1(28,37)=1;
g1(28,61)=(-(params(11)/(1+params(11))));
g1(28,47)=params(59);
g1(28,13)=T(10);
g1(28,48)=T(3);
g1(29,35)=params(12);
g1(29,37)=(-1);
g1(29,40)=(-1);
g1(29,47)=1;
g1(29,49)=1;
g1(30,20)=y(42)*y(34)/y(33);
g1(30,33)=(-(1-y(42)*(-(y(20)*y(34)))/(y(33)*y(33))));
g1(30,34)=y(42)*y(20)/y(33);
g1(30,42)=y(20)*y(34)/y(33);
g1(30,46)=1;
g1(31,33)=T(4);
g1(31,39)=(-(params(56)/params(54)));
g1(31,42)=(-(params(34)*params(53)/params(54)));
g1(31,44)=(-(params(55)/params(54)));
g1(31,50)=(-T(4));
g1(32,13)=(-params(22));
g1(32,48)=1;
g1(32,67)=(-1);
g1(33,15)=(-params(24));
g1(33,51)=1;
g1(33,68)=(-1);
g1(34,16)=(-params(21));
g1(34,52)=1;
g1(34,69)=(-1);
g1(35,14)=(-params(23));
g1(35,50)=1;
g1(35,70)=(-1);
g1(36,71)=(-1);

end
