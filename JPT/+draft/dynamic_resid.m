function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = draft.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(36, 1);
    residual(1) = (y(17)) - ((params(43)+params(38))/params(43)*(params(1)*y(18)+(1-params(1))*y(19)));
    residual(2) = (y(20)) - (y(19)+y(21)-y(18));
    residual(3) = (y(22)) - (params(1)*y(20)+(1-params(1))*y(21));
    residual(4) = (y(23)) - (T(1)+y(22)*params(33)+params(33)*params(7));
    residual(5) = (y(25)) - (y(56)*T(5)-y(24)*T(6)+y(3)*T(7)+T(9));
    residual(6) = (y(25)) - (y(26)+y(57)-y(66)-y(55));
    residual(7) = (y(20)) - (params(15)*y(27));
    residual(8) = (y(28)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(58)-y(66))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(57)-y(66)+y(53)));
    residual(9) = (y(25)) - (y(28)+y(51)-exp(2*params(5))*params(16)*(y(48)+y(29)-y(5))+params(16)*params(11)*exp(2*params(5))*(y(66)+y(59)-y(29)));
    residual(10) = (y(18)) - (y(27)+y(6)-y(48));
    residual(11) = (y(30)) - ((1-params(2))*exp((-params(5)))*(y(6)-y(48))+(1-(1-params(2))*exp((-params(5))))*(y(51)+y(29)));
    residual(12) = (y(21)) - (1/(1+params(11))*y(1)+params(11)/(1+params(11))*y(54)-params(59)*y(32)+y(2)*params(4)/(1+params(11))-y(23)*T(2)+y(55)*params(11)*params(11)+params(4)/(1+params(11))*y(13)-y(48)*T(3));
    residual(13) = (y(32)) - (y(21)-(y(19)*params(12)+y(49)-y(25)));
    residual(14) = (y(26)) - (params(20)*y(4)+(1-params(20))*(y(23)*params(17)+params(18)*(y(31)-y(46)))+params(19)*(y(31)-y(7)-(y(46)-y(12)))+y(52));
    residual(15) = (y(31)) - (y(17)-y(27)*y(18)*y(20)/y(17));
    residual(16) = (y(17)*T(4)) - (T(4)*y(50)+y(24)*params(45)/params(43)+y(29)*params(44)/params(43)+y(27)*params(34)*params(42)/params(43));
    residual(17) = (y(33)) - ((params(54)+params(49))/params(54)*(params(1)*y(34)+(1-params(1))*y(35)));
    residual(18) = (y(36)) - (y(35)+y(37)-y(34));
    residual(19) = (0) - (params(1)*y(36)+(1-params(1))*y(37));
    residual(20) = (y(23)) - (params(33)*params(7)+T(1)+params(33)*y(38));
    residual(21) = (y(40)) - (T(9)+y(62)*T(5)-y(39)*T(6)+y(9)*T(7));
    residual(22) = (y(40)) - (y(41)+y(63)-y(66)-y(55));
    residual(23) = (y(36)) - (params(15)*y(42));
    residual(24) = (y(43)) - (params(11)*(1-params(2))*exp((-params(5)))*(y(64)-y(66))+(1-params(11)*(1-params(2))*exp((-params(5))))*(y(63)-y(66)+y(60)));
    residual(25) = (y(40)) - (y(51)+y(43)-exp(2*params(5))*params(16)*(y(48)+y(44)-y(10))+params(16)*params(11)*exp(2*params(5))*(y(66)+y(65)-y(44)));
    residual(26) = (y(34)) - (y(42)+y(11)-y(48));
    residual(27) = (y(45)) - ((1-params(2))*exp((-params(5)))*(y(11)-y(48))+(1-(1-params(2))*exp((-params(5))))*(y(51)+y(44)));
    residual(28) = (y(37)) - (params(4)/(1+params(11))*y(13)+y(55)*params(11)*params(11)+y(2)*params(4)/(1+params(11))+1/(1+params(11))*y(8)+params(11)/(1+params(11))*y(61)-params(59)*y(47)-y(23)*T(2)-y(48)*T(3));
    residual(29) = (y(47)) - (y(37)-(y(49)+params(12)*y(35)-y(40)));
    residual(30) = (y(46)) - (y(33)-y(42)*y(20)*y(34)/y(33));
    residual(31) = (T(4)*y(33)) - (T(4)*y(50)+y(39)*params(56)/params(54)+y(44)*params(55)/params(54)+y(42)*params(34)*params(53)/params(54));
    residual(32) = (y(48)) - (params(22)*y(13)+x(it_, 1));
    residual(33) = (y(51)) - (params(24)*y(15)+x(it_, 2));
    residual(34) = (y(52)) - (params(21)*y(16)+x(it_, 3));
    residual(35) = (y(50)) - (params(23)*y(14)+x(it_, 4));
    residual(36) = (params(7)) - (params(7)*params(25)+x(it_, 5));

end
