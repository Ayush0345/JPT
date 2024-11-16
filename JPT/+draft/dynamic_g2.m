function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = draft.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(26,1);
g2_j = zeros(26,1);
g2_v = zeros(26,1);

g2_i(1)=15;
g2_i(2)=15;
g2_i(3)=15;
g2_i(4)=15;
g2_i(5)=15;
g2_i(6)=15;
g2_i(7)=15;
g2_i(8)=15;
g2_i(9)=15;
g2_i(10)=15;
g2_i(11)=15;
g2_i(12)=15;
g2_i(13)=15;
g2_i(14)=30;
g2_i(15)=30;
g2_i(16)=30;
g2_i(17)=30;
g2_i(18)=30;
g2_i(19)=30;
g2_i(20)=30;
g2_i(21)=30;
g2_i(22)=30;
g2_i(23)=30;
g2_i(24)=30;
g2_i(25)=30;
g2_i(26)=30;
g2_j(1)=1153;
g2_j(2)=1154;
g2_j(3)=1224;
g2_j(4)=1156;
g2_j(5)=1366;
g2_j(6)=1163;
g2_j(7)=1863;
g2_j(8)=1227;
g2_j(9)=1367;
g2_j(10)=1234;
g2_j(11)=1864;
g2_j(12)=1376;
g2_j(13)=1866;
g2_j(14)=1382;
g2_j(15)=2292;
g2_j(16)=1383;
g2_j(17)=2363;
g2_j(18)=1391;
g2_j(19)=2931;
g2_j(20)=2305;
g2_j(21)=2306;
g2_j(22)=2376;
g2_j(23)=2314;
g2_j(24)=2944;
g2_j(25)=2385;
g2_j(26)=2945;
g2_v(1)=y(27)*(-((-(y(18)*y(20)))*(y(17)+y(17))))/(y(17)*y(17)*y(17)*y(17));
g2_v(2)=y(27)*(-y(20))/(y(17)*y(17));
g2_v(3)=g2_v(2);
g2_v(4)=y(27)*(-y(18))/(y(17)*y(17));
g2_v(5)=g2_v(4);
g2_v(6)=(-(y(18)*y(20)))/(y(17)*y(17));
g2_v(7)=g2_v(6);
g2_v(8)=y(27)*1/y(17);
g2_v(9)=g2_v(8);
g2_v(10)=y(20)/y(17);
g2_v(11)=g2_v(10);
g2_v(12)=y(18)/y(17);
g2_v(13)=g2_v(12);
g2_v(14)=y(42)*(-y(34))/(y(33)*y(33));
g2_v(15)=g2_v(14);
g2_v(16)=y(42)*1/y(33);
g2_v(17)=g2_v(16);
g2_v(18)=y(34)/y(33);
g2_v(19)=g2_v(18);
g2_v(20)=y(42)*(-((-(y(20)*y(34)))*(y(33)+y(33))))/(y(33)*y(33)*y(33)*y(33));
g2_v(21)=y(42)*(-y(20))/(y(33)*y(33));
g2_v(22)=g2_v(21);
g2_v(23)=(-(y(20)*y(34)))/(y(33)*y(33));
g2_v(24)=g2_v(23);
g2_v(25)=y(20)/y(33);
g2_v(26)=g2_v(25);
g2 = sparse(g2_i,g2_j,g2_v,36,5041);
end
