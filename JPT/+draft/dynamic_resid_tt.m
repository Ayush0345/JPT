function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 9);

T(1) = params(11)/(1+params(11)*params(3))*y(55)+params(3)/(1+params(11)*params(3))*y(2);
T(2) = 1+params(11)*params(4)/(1+params(11));
T(3) = (1+params(11)*params(4)-params(11)*params(22))/(1+params(11));
T(4) = 1/params(32);
T(5) = exp(params(5))*params(6)*params(11)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(6) = (exp(2*params(5))+params(11)*params(6)^2)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(7) = exp(params(5))*params(6)/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(8) = (exp(params(5))*params(6)*params(11)*params(22)-exp(params(5))*params(6))/((exp(params(5))-params(6)*params(11))*(exp(params(5))-params(6)));
T(9) = y(48)*T(8);

end
