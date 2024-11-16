%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'draft';
M_.dynare_version = '6.1';
oo_.dynare_version = '6.1';
options_.dynare_version = '6.1';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(5,1);
M_.exo_names_tex = cell(5,1);
M_.exo_names_long = cell(5,1);
M_.exo_names(1) = {'eps_z'};
M_.exo_names_tex(1) = {'eps\_z'};
M_.exo_names_long(1) = {'eps_z'};
M_.exo_names(2) = {'eps_mu'};
M_.exo_names_tex(2) = {'eps\_mu'};
M_.exo_names_long(2) = {'eps_mu'};
M_.exo_names(3) = {'eps_mp'};
M_.exo_names_tex(3) = {'eps\_mp'};
M_.exo_names_long(3) = {'eps_mp'};
M_.exo_names(4) = {'eps_g'};
M_.exo_names_tex(4) = {'eps\_g'};
M_.exo_names_long(4) = {'eps_g'};
M_.exo_names(5) = {'eps_p'};
M_.exo_names_tex(5) = {'eps\_p'};
M_.exo_names_long(5) = {'eps_p'};
M_.endo_names = cell(36,1);
M_.endo_names_tex = cell(36,1);
M_.endo_names_long = cell(36,1);
M_.endo_names(1) = {'y'};
M_.endo_names_tex(1) = {'y'};
M_.endo_names_long(1) = {'y'};
M_.endo_names(2) = {'k'};
M_.endo_names_tex(2) = {'k'};
M_.endo_names_long(2) = {'k'};
M_.endo_names(3) = {'L'};
M_.endo_names_tex(3) = {'L'};
M_.endo_names_long(3) = {'L'};
M_.endo_names(4) = {'rho'};
M_.endo_names_tex(4) = {'rho'};
M_.endo_names_long(4) = {'rho'};
M_.endo_names(5) = {'w'};
M_.endo_names_tex(5) = {'w'};
M_.endo_names_long(5) = {'w'};
M_.endo_names(6) = {'s'};
M_.endo_names_tex(6) = {'s'};
M_.endo_names_long(6) = {'s'};
M_.endo_names(7) = {'ppi'};
M_.endo_names_tex(7) = {'ppi'};
M_.endo_names_long(7) = {'ppi'};
M_.endo_names(8) = {'c'};
M_.endo_names_tex(8) = {'c'};
M_.endo_names_long(8) = {'c'};
M_.endo_names(9) = {'lambda'};
M_.endo_names_tex(9) = {'lambda'};
M_.endo_names_long(9) = {'lambda'};
M_.endo_names(10) = {'R'};
M_.endo_names_tex(10) = {'R'};
M_.endo_names_long(10) = {'R'};
M_.endo_names(11) = {'u'};
M_.endo_names_tex(11) = {'u'};
M_.endo_names_long(11) = {'u'};
M_.endo_names(12) = {'phi'};
M_.endo_names_tex(12) = {'phi'};
M_.endo_names_long(12) = {'phi'};
M_.endo_names(13) = {'i'};
M_.endo_names_tex(13) = {'i'};
M_.endo_names_long(13) = {'i'};
M_.endo_names(14) = {'kbar'};
M_.endo_names_tex(14) = {'kbar'};
M_.endo_names_long(14) = {'kbar'};
M_.endo_names(15) = {'x'};
M_.endo_names_tex(15) = {'x'};
M_.endo_names_long(15) = {'x'};
M_.endo_names(16) = {'gw'};
M_.endo_names_tex(16) = {'gw'};
M_.endo_names_long(16) = {'gw'};
M_.endo_names(17) = {'y_star'};
M_.endo_names_tex(17) = {'y\_star'};
M_.endo_names_long(17) = {'y_star'};
M_.endo_names(18) = {'k_star'};
M_.endo_names_tex(18) = {'k\_star'};
M_.endo_names_long(18) = {'k_star'};
M_.endo_names(19) = {'L_star'};
M_.endo_names_tex(19) = {'L\_star'};
M_.endo_names_long(19) = {'L_star'};
M_.endo_names(20) = {'rho_star'};
M_.endo_names_tex(20) = {'rho\_star'};
M_.endo_names_long(20) = {'rho_star'};
M_.endo_names(21) = {'w_star'};
M_.endo_names_tex(21) = {'w\_star'};
M_.endo_names_long(21) = {'w_star'};
M_.endo_names(22) = {'s_star'};
M_.endo_names_tex(22) = {'s\_star'};
M_.endo_names_long(22) = {'s_star'};
M_.endo_names(23) = {'c_star'};
M_.endo_names_tex(23) = {'c\_star'};
M_.endo_names_long(23) = {'c_star'};
M_.endo_names(24) = {'lambda_star'};
M_.endo_names_tex(24) = {'lambda\_star'};
M_.endo_names_long(24) = {'lambda_star'};
M_.endo_names(25) = {'R_star'};
M_.endo_names_tex(25) = {'R\_star'};
M_.endo_names_long(25) = {'R_star'};
M_.endo_names(26) = {'u_star'};
M_.endo_names_tex(26) = {'u\_star'};
M_.endo_names_long(26) = {'u_star'};
M_.endo_names(27) = {'phi_star'};
M_.endo_names_tex(27) = {'phi\_star'};
M_.endo_names_long(27) = {'phi_star'};
M_.endo_names(28) = {'i_star'};
M_.endo_names_tex(28) = {'i\_star'};
M_.endo_names_long(28) = {'i_star'};
M_.endo_names(29) = {'kbar_star'};
M_.endo_names_tex(29) = {'kbar\_star'};
M_.endo_names_long(29) = {'kbar_star'};
M_.endo_names(30) = {'x_star'};
M_.endo_names_tex(30) = {'x\_star'};
M_.endo_names_long(30) = {'x_star'};
M_.endo_names(31) = {'gw_star'};
M_.endo_names_tex(31) = {'gw\_star'};
M_.endo_names_long(31) = {'gw_star'};
M_.endo_names(32) = {'z'};
M_.endo_names_tex(32) = {'z'};
M_.endo_names_long(32) = {'z'};
M_.endo_names(33) = {'b'};
M_.endo_names_tex(33) = {'b'};
M_.endo_names_long(33) = {'b'};
M_.endo_names(34) = {'g'};
M_.endo_names_tex(34) = {'g'};
M_.endo_names_long(34) = {'g'};
M_.endo_names(35) = {'mu'};
M_.endo_names_tex(35) = {'mu'};
M_.endo_names_long(35) = {'mu'};
M_.endo_names(36) = {'etamp'};
M_.endo_names_tex(36) = {'etamp'};
M_.endo_names_long(36) = {'etamp'};
M_.endo_partitions = struct();
M_.param_names = cell(59,1);
M_.param_names_tex = cell(59,1);
M_.param_names_long = cell(59,1);
M_.param_names(1) = {'alpha'};
M_.param_names_tex(1) = {'alpha'};
M_.param_names_long(1) = {'alpha'};
M_.param_names(2) = {'delta'};
M_.param_names_tex(2) = {'delta'};
M_.param_names_long(2) = {'delta'};
M_.param_names(3) = {'ip'};
M_.param_names_tex(3) = {'ip'};
M_.param_names_long(3) = {'ip'};
M_.param_names(4) = {'iw'};
M_.param_names_tex(4) = {'iw'};
M_.param_names_long(4) = {'iw'};
M_.param_names(5) = {'gammam'};
M_.param_names_tex(5) = {'gammam'};
M_.param_names_long(5) = {'gammam'};
M_.param_names(6) = {'h'};
M_.param_names_tex(6) = {'h'};
M_.param_names_long(6) = {'h'};
M_.param_names(7) = {'lambda_p'};
M_.param_names_tex(7) = {'lambda\_p'};
M_.param_names_long(7) = {'lambda_p'};
M_.param_names(8) = {'lambda_w'};
M_.param_names_tex(8) = {'lambda\_w'};
M_.param_names_long(8) = {'lambda_w'};
M_.param_names(9) = {'L_ss'};
M_.param_names_tex(9) = {'L\_ss'};
M_.param_names_long(9) = {'L_ss'};
M_.param_names(10) = {'pi_ss'};
M_.param_names_tex(10) = {'pi\_ss'};
M_.param_names_long(10) = {'pi_ss'};
M_.param_names(11) = {'beta'};
M_.param_names_tex(11) = {'beta'};
M_.param_names_long(11) = {'beta'};
M_.param_names(12) = {'nu'};
M_.param_names_tex(12) = {'nu'};
M_.param_names_long(12) = {'nu'};
M_.param_names(13) = {'zeta_p'};
M_.param_names_tex(13) = {'zeta\_p'};
M_.param_names_long(13) = {'zeta_p'};
M_.param_names(14) = {'zeta_w'};
M_.param_names_tex(14) = {'zeta\_w'};
M_.param_names_long(14) = {'zeta_w'};
M_.param_names(15) = {'xi'};
M_.param_names_tex(15) = {'xi'};
M_.param_names_long(15) = {'xi'};
M_.param_names(16) = {'s2prime'};
M_.param_names_tex(16) = {'s2prime'};
M_.param_names_long(16) = {'s2prime'};
M_.param_names(17) = {'phi_pi'};
M_.param_names_tex(17) = {'phi\_pi'};
M_.param_names_long(17) = {'phi_pi'};
M_.param_names(18) = {'phi_x'};
M_.param_names_tex(18) = {'phi\_x'};
M_.param_names_long(18) = {'phi_x'};
M_.param_names(19) = {'phi_dx'};
M_.param_names_tex(19) = {'phi\_dx'};
M_.param_names_long(19) = {'phi_dx'};
M_.param_names(20) = {'rho_R'};
M_.param_names_tex(20) = {'rho\_R'};
M_.param_names_long(20) = {'rho_R'};
M_.param_names(21) = {'rho_mp'};
M_.param_names_tex(21) = {'rho\_mp'};
M_.param_names_long(21) = {'rho_mp'};
M_.param_names(22) = {'rho_z'};
M_.param_names_tex(22) = {'rho\_z'};
M_.param_names_long(22) = {'rho_z'};
M_.param_names(23) = {'rho_g'};
M_.param_names_tex(23) = {'rho\_g'};
M_.param_names_long(23) = {'rho_g'};
M_.param_names(24) = {'rho_mu'};
M_.param_names_tex(24) = {'rho\_mu'};
M_.param_names_long(24) = {'rho_mu'};
M_.param_names(25) = {'rho_p'};
M_.param_names_tex(25) = {'rho\_p'};
M_.param_names_long(25) = {'rho_p'};
M_.param_names(26) = {'rho_w'};
M_.param_names_tex(26) = {'rho\_w'};
M_.param_names_long(26) = {'rho_w'};
M_.param_names(27) = {'rho_b'};
M_.param_names_tex(27) = {'rho\_b'};
M_.param_names_long(27) = {'rho_b'};
M_.param_names(28) = {'theta_p'};
M_.param_names_tex(28) = {'theta\_p'};
M_.param_names_long(28) = {'theta_p'};
M_.param_names(29) = {'theta_w'};
M_.param_names_tex(29) = {'theta\_w'};
M_.param_names_long(29) = {'theta_w'};
M_.param_names(30) = {'lambdap_ss'};
M_.param_names_tex(30) = {'lambdap\_ss'};
M_.param_names_long(30) = {'lambdap_ss'};
M_.param_names(31) = {'lambdaw_ss'};
M_.param_names_tex(31) = {'lambdaw\_ss'};
M_.param_names_long(31) = {'lambdaw_ss'};
M_.param_names(32) = {'g_ss'};
M_.param_names_tex(32) = {'g\_ss'};
M_.param_names_long(32) = {'g_ss'};
M_.param_names(33) = {'kappa'};
M_.param_names_tex(33) = {'kappa'};
M_.param_names_long(33) = {'kappa'};
M_.param_names(34) = {'rho_ss'};
M_.param_names_tex(34) = {'rho\_ss'};
M_.param_names_long(34) = {'rho_ss'};
M_.param_names(35) = {'w_ss'};
M_.param_names_tex(35) = {'w\_ss'};
M_.param_names_long(35) = {'w_ss'};
M_.param_names(36) = {'kLratio'};
M_.param_names_tex(36) = {'kLratio'};
M_.param_names_long(36) = {'kLratio'};
M_.param_names(37) = {'FLratio'};
M_.param_names_tex(37) = {'FLratio'};
M_.param_names_long(37) = {'FLratio'};
M_.param_names(38) = {'F'};
M_.param_names_tex(38) = {'F'};
M_.param_names_long(38) = {'F'};
M_.param_names(39) = {'yLratio'};
M_.param_names_tex(39) = {'yLratio'};
M_.param_names_long(39) = {'yLratio'};
M_.param_names(40) = {'iLratio'};
M_.param_names_tex(40) = {'iLratio'};
M_.param_names_long(40) = {'iLratio'};
M_.param_names(41) = {'cLratio'};
M_.param_names_tex(41) = {'cLratio'};
M_.param_names_long(41) = {'cLratio'};
M_.param_names(42) = {'k_ss'};
M_.param_names_tex(42) = {'k\_ss'};
M_.param_names_long(42) = {'k_ss'};
M_.param_names(43) = {'y_ss'};
M_.param_names_tex(43) = {'y\_ss'};
M_.param_names_long(43) = {'y_ss'};
M_.param_names(44) = {'i_ss'};
M_.param_names_tex(44) = {'i\_ss'};
M_.param_names_long(44) = {'i_ss'};
M_.param_names(45) = {'c_ss'};
M_.param_names_tex(45) = {'c\_ss'};
M_.param_names_long(45) = {'c_ss'};
M_.param_names(46) = {'R_ss'};
M_.param_names_tex(46) = {'R\_ss'};
M_.param_names_long(46) = {'R_ss'};
M_.param_names(47) = {'kLstarratio'};
M_.param_names_tex(47) = {'kLstarratio'};
M_.param_names_long(47) = {'kLstarratio'};
M_.param_names(48) = {'FLstarratio'};
M_.param_names_tex(48) = {'FLstarratio'};
M_.param_names_long(48) = {'FLstarratio'};
M_.param_names(49) = {'Fstar'};
M_.param_names_tex(49) = {'Fstar'};
M_.param_names_long(49) = {'Fstar'};
M_.param_names(50) = {'yLstarratio'};
M_.param_names_tex(50) = {'yLstarratio'};
M_.param_names_long(50) = {'yLstarratio'};
M_.param_names(51) = {'iLstarratio'};
M_.param_names_tex(51) = {'iLstarratio'};
M_.param_names_long(51) = {'iLstarratio'};
M_.param_names(52) = {'cLstarratio'};
M_.param_names_tex(52) = {'cLstarratio'};
M_.param_names_long(52) = {'cLstarratio'};
M_.param_names(53) = {'kstar_ss'};
M_.param_names_tex(53) = {'kstar\_ss'};
M_.param_names_long(53) = {'kstar_ss'};
M_.param_names(54) = {'ystar_ss'};
M_.param_names_tex(54) = {'ystar\_ss'};
M_.param_names_long(54) = {'ystar_ss'};
M_.param_names(55) = {'istar_ss'};
M_.param_names_tex(55) = {'istar\_ss'};
M_.param_names_long(55) = {'istar_ss'};
M_.param_names(56) = {'cstar_ss'};
M_.param_names_tex(56) = {'cstar\_ss'};
M_.param_names_long(56) = {'cstar_ss'};
M_.param_names(57) = {'wstar_ss'};
M_.param_names_tex(57) = {'wstar\_ss'};
M_.param_names_long(57) = {'wstar_ss'};
M_.param_names(58) = {'discoef'};
M_.param_names_tex(58) = {'discoef'};
M_.param_names_long(58) = {'discoef'};
M_.param_names(59) = {'kappa_w'};
M_.param_names_tex(59) = {'kappa\_w'};
M_.param_names_long(59) = {'kappa_w'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 36;
M_.param_nbr = 59;
M_.orig_endo_nbr = 36;
M_.aux_vars = [];
options_.varobs = cell(7, 1);
options_.varobs(1)  = {'y'};
options_.varobs(2)  = {'c'};
options_.varobs(3)  = {'i'};
options_.varobs(4)  = {'ppi'};
options_.varobs(5)  = {'R'};
options_.varobs(6)  = {'L'};
options_.varobs(7)  = {'w'};
options_.varobs_id = [ 1 8 13 7 10 3 5  ];
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.nonzero_hessian_eqs = [15 30];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.eq_nbr = 36;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 53;
 1 21 54;
 0 22 0;
 2 23 55;
 3 24 56;
 0 25 57;
 4 26 0;
 0 27 0;
 0 28 58;
 5 29 59;
 6 30 0;
 7 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 60;
 8 37 61;
 0 38 0;
 9 39 62;
 0 40 63;
 0 41 0;
 0 42 0;
 0 43 64;
 10 44 65;
 11 45 0;
 12 46 0;
 0 47 0;
 13 48 66;
 0 49 0;
 14 50 0;
 15 51 0;
 16 52 0;]';
M_.nstatic = 14;
M_.nfwrd   = 6;
M_.npred   = 8;
M_.nboth   = 8;
M_.nsfwrd   = 14;
M_.nspred   = 16;
M_.ndynamic   = 22;
M_.dynamic_tmp_nbr = [9; 1; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'y' ;
  2 , 'name' , 'rho' ;
  3 , 'name' , 's' ;
  4 , 'name' , 'ppi' ;
  5 , 'name' , 'lambda' ;
  6 , 'name' , '6' ;
  7 , 'name' , '7' ;
  8 , 'name' , 'phi' ;
  9 , 'name' , '9' ;
  10 , 'name' , 'k' ;
  11 , 'name' , 'kbar' ;
  12 , 'name' , 'w' ;
  13 , 'name' , 'gw' ;
  14 , 'name' , 'R' ;
  15 , 'name' , 'x' ;
  16 , 'name' , '16' ;
  17 , 'name' , 'y_star' ;
  18 , 'name' , 'rho_star' ;
  19 , 'name' , '19' ;
  20 , 'name' , '20' ;
  21 , 'name' , 'lambda_star' ;
  22 , 'name' , '22' ;
  23 , 'name' , '23' ;
  24 , 'name' , 'phi_star' ;
  25 , 'name' , '25' ;
  26 , 'name' , 'k_star' ;
  27 , 'name' , 'kbar_star' ;
  28 , 'name' , 'w_star' ;
  29 , 'name' , 'gw_star' ;
  30 , 'name' , 'x_star' ;
  31 , 'name' , '31' ;
  32 , 'name' , 'z' ;
  33 , 'name' , 'mu' ;
  34 , 'name' , 'etamp' ;
  35 , 'name' , 'g' ;
  36 , 'name' , 'lambda_p' ;
};
M_.mapping.y.eqidx = [1 15 16 ];
M_.mapping.k.eqidx = [1 2 10 15 ];
M_.mapping.L.eqidx = [1 2 13 ];
M_.mapping.rho.eqidx = [2 3 7 8 15 30 ];
M_.mapping.w.eqidx = [2 3 12 13 ];
M_.mapping.s.eqidx = [3 4 ];
M_.mapping.ppi.eqidx = [4 6 12 14 20 22 28 ];
M_.mapping.c.eqidx = [5 16 ];
M_.mapping.lambda.eqidx = [5 6 8 9 13 ];
M_.mapping.R.eqidx = [6 14 ];
M_.mapping.u.eqidx = [7 10 15 16 ];
M_.mapping.phi.eqidx = [8 9 ];
M_.mapping.i.eqidx = [9 11 16 ];
M_.mapping.kbar.eqidx = [10 11 ];
M_.mapping.x.eqidx = [14 15 ];
M_.mapping.gw.eqidx = [12 13 ];
M_.mapping.y_star.eqidx = [17 30 31 ];
M_.mapping.k_star.eqidx = [17 18 26 30 ];
M_.mapping.L_star.eqidx = [17 18 29 ];
M_.mapping.rho_star.eqidx = [18 19 23 24 ];
M_.mapping.w_star.eqidx = [18 19 28 29 ];
M_.mapping.s_star.eqidx = [20 ];
M_.mapping.c_star.eqidx = [21 31 ];
M_.mapping.lambda_star.eqidx = [21 22 24 25 29 ];
M_.mapping.R_star.eqidx = [22 ];
M_.mapping.u_star.eqidx = [23 26 30 31 ];
M_.mapping.phi_star.eqidx = [24 25 ];
M_.mapping.i_star.eqidx = [25 27 31 ];
M_.mapping.kbar_star.eqidx = [26 27 ];
M_.mapping.x_star.eqidx = [14 30 ];
M_.mapping.gw_star.eqidx = [28 29 ];
M_.mapping.z.eqidx = [5 6 8 9 10 11 12 21 22 24 25 26 27 28 32 ];
M_.mapping.b.eqidx = [13 29 ];
M_.mapping.g.eqidx = [16 31 35 ];
M_.mapping.mu.eqidx = [9 11 25 27 33 ];
M_.mapping.etamp.eqidx = [14 34 ];
M_.mapping.eps_z.eqidx = [32 ];
M_.mapping.eps_mu.eqidx = [33 ];
M_.mapping.eps_mp.eqidx = [34 ];
M_.mapping.eps_g.eqidx = [35 ];
M_.mapping.eps_p.eqidx = [36 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 7 8 10 13 14 15 21 23 28 29 30 32 34 35 36 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(36, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(59, 1);
M_.endo_trends = struct('deflator', cell(36, 1), 'log_deflator', cell(36, 1), 'growth_factor', cell(36, 1), 'log_growth_factor', cell(36, 1));
M_.NNZDerivatives = [164; 26; -1; ];
M_.dynamic_g1_sparse_rowval = int32([12 4 12 20 28 5 14 9 10 11 14 28 21 25 26 27 14 12 28 32 35 33 34 1 15 16 1 2 10 15 1 2 13 2 3 7 15 30 2 3 12 13 3 4 4 12 14 20 28 5 16 5 6 9 13 6 14 7 10 15 16 8 9 9 11 16 11 14 15 12 13 17 30 31 17 18 26 30 17 18 29 18 19 23 18 19 28 29 20 21 31 21 22 25 29 22 23 26 30 31 24 25 25 27 31 27 14 30 28 29 5 9 10 11 12 21 25 26 27 28 32 13 29 16 31 35 9 11 25 27 33 14 34 8 12 4 6 12 20 22 28 5 6 8 8 9 24 28 21 22 24 24 25 6 8 9 22 24 25 32 33 34 35 36 ]);
M_.dynamic_g1_sparse_colval = int32([5 7 7 7 7 8 10 13 14 14 15 21 23 28 29 29 30 32 32 32 34 35 36 37 37 37 38 38 38 38 39 39 39 40 40 40 40 40 41 41 41 41 42 42 43 43 43 43 43 44 44 45 45 45 45 46 46 47 47 47 47 48 48 49 49 49 50 51 51 52 52 53 53 53 54 54 54 54 55 55 55 56 56 56 57 57 57 57 58 59 59 60 60 60 60 61 62 62 62 62 63 63 64 64 64 65 66 66 67 67 68 68 68 68 68 68 68 68 68 68 68 69 69 70 70 70 71 71 71 71 71 72 72 76 77 79 79 79 79 79 79 80 81 81 84 85 92 93 95 96 96 99 100 104 104 104 104 104 104 109 110 111 112 113 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 1 2 2 6 7 7 8 8 8 9 11 12 12 12 12 12 12 13 13 14 14 14 14 14 15 17 18 18 21 21 22 23 24 27 31 34 39 43 45 50 52 56 58 62 64 67 68 70 72 75 79 82 85 89 90 92 96 97 101 103 106 107 109 111 122 124 127 132 134 134 134 134 135 136 136 142 143 145 145 145 146 147 147 147 147 147 147 147 148 149 149 150 152 152 152 153 154 154 154 154 160 160 160 160 160 161 162 163 164 165 ]);
M_.dynamic_g2_sparse_indices = int32([15 37 37 ;
15 37 38 ;
15 37 40 ;
15 37 47 ;
15 38 40 ;
15 38 47 ;
15 40 47 ;
30 40 53 ;
30 40 54 ;
30 40 62 ;
30 53 53 ;
30 53 54 ;
30 53 62 ;
30 54 62 ;
]);
M_.lhs = {
'y'; 
'rho'; 
's'; 
'ppi'; 
'lambda'; 
'lambda'; 
'rho'; 
'phi'; 
'lambda'; 
'k'; 
'kbar'; 
'w'; 
'gw'; 
'R'; 
'x'; 
'y*1/g_ss'; 
'y_star'; 
'rho_star'; 
'0'; 
'ppi'; 
'lambda_star'; 
'lambda_star'; 
'rho_star'; 
'phi_star'; 
'lambda_star'; 
'k_star'; 
'kbar_star'; 
'w_star'; 
'gw_star'; 
'x_star'; 
'1/g_ss*y_star'; 
'z'; 
'mu'; 
'etamp'; 
'g'; 
'lambda_p'; 
};
M_.static_tmp_nbr = [8; 2; 0; 0; ];
M_.static_g1_sparse_rowval = int32([1 15 16 1 2 10 15 1 2 13 2 3 7 8 15 30 2 3 12 13 3 4 4 6 12 14 20 22 28 5 16 5 8 9 13 6 14 7 10 15 16 8 9 11 16 10 11 14 15 12 13 17 30 31 17 18 26 30 17 18 29 18 19 23 24 18 19 28 29 20 21 31 21 24 25 29 22 23 26 30 31 24 25 27 31 26 27 14 30 28 29 5 6 8 9 10 11 12 21 22 24 25 26 27 28 32 13 29 16 31 35 9 11 25 27 33 14 34 ]);
M_.static_g1_sparse_colval = int32([1 1 1 2 2 2 2 3 3 3 4 4 4 4 4 4 5 5 5 5 6 6 7 7 7 7 7 7 7 8 8 9 9 9 9 10 10 11 11 11 11 12 12 13 13 14 14 15 15 16 16 17 17 17 18 18 18 18 19 19 19 20 20 20 20 21 21 21 21 22 23 23 24 24 24 24 25 26 26 26 26 27 27 28 28 29 29 30 30 31 31 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 33 33 34 34 34 35 35 35 35 35 36 36 ]);
M_.static_g1_sparse_colptr = int32([1 4 8 11 17 21 23 30 32 36 38 42 44 46 48 50 52 55 59 62 66 70 71 73 77 78 82 84 86 88 90 92 107 109 112 117 119 ]);
M_.params(2) = 0.025;
delta = M_.params(2);
M_.params(13) = 0.84;
zeta_p = M_.params(13);
M_.params(14) = 0.7;
zeta_w = M_.params(14);
M_.params(3) = 0.24;
ip = M_.params(3);
M_.params(8) = 0.15;
lambda_w = M_.params(8);
M_.params(7) = 0.23;
lambda_p = M_.params(7);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.01;
M_.Sigma_e(2, 2) = 36.3609;
M_.Sigma_e(3, 3) = 0.0484;
M_.Sigma_e(4, 4) = 0.1225;
M_.Sigma_e(5, 5) = 0.0196;
if isempty(estim_params_)
    estim_params_.var_exo = zeros(0, 10);
    estim_params_.var_endo = zeros(0, 10);
    estim_params_.corrx = zeros(0, 11);
    estim_params_.corrn = zeros(0, 11);
    estim_params_.param_vals = zeros(0, 10);
end
if ~isempty(find(estim_params_.param_vals(:,1)==1))
    error('Parameter alpha has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 1, NaN, (-Inf), Inf, 1, 0.3, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==4))
    error('Parameter iw has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 4, NaN, (-Inf), Inf, 1, 0.5, 0.15, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==5))
    error('Parameter gammam has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 5, NaN, (-Inf), Inf, 3, 0.5, 0.03, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==6))
    error('Parameter h has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 6, NaN, (-Inf), Inf, 1, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==9))
    error('Parameter L_ss has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 9, NaN, (-Inf), Inf, 3, 0, 0.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==10))
    error('Parameter pi_ss has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 10, NaN, (-Inf), Inf, 3, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==11))
    error('Parameter beta has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 11, NaN, (-Inf), Inf, 2, 0.25, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==12))
    error('Parameter nu has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 12, NaN, (-Inf), Inf, 2, 2, 0.75, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==15))
    error('Parameter xi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 15, NaN, (-Inf), Inf, 2, 5, 1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==16))
    error('Parameter s2prime has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 16, NaN, (-Inf), Inf, 2, 4, 1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==17))
    error('Parameter phi_pi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 17, NaN, (-Inf), Inf, 3, 1.7, 0.3, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==18))
    error('Parameter phi_x has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 18, NaN, (-Inf), Inf, 3, 0.13, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==19))
    error('Parameter phi_dx has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 19, NaN, (-Inf), Inf, 3, 0.13, 0.05, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==20))
    error('Parameter rho_R has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 20, NaN, (-Inf), Inf, 1, 0.6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==21))
    error('Parameter rho_mp has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 21, NaN, (-Inf), Inf, 1, 0.4, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==22))
    error('Parameter rho_z has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 22, NaN, (-Inf), Inf, 1, 0.6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==23))
    error('Parameter rho_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 23, NaN, (-Inf), Inf, 1, 0.6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==24))
    error('Parameter rho_mu has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 24, NaN, (-Inf), Inf, 1, 0.6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==25))
    error('Parameter rho_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 25, NaN, (-Inf), Inf, 1, 0.6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==26))
    error('Parameter rho_w has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 26, NaN, (-Inf), Inf, 1, 0.6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==27))
    error('Parameter rho_b has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 27, NaN, (-Inf), Inf, 1, 0.6, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==28))
    error('Parameter theta_p has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 28, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==29))
    error('Parameter theta_w has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 29, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
options_.datafile = 'model_data.mat';
options_.first_obs = 10;
options_.mh_jscale = 0.4;
options_.mh_replic = 120000;
options_.mode_compute = 3;
options_.order = 1;
var_list_ = {};
oo_recursive_=dynare_estimation(var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'draft_results.mat'], 'options_mom_', '-append');
end
disp('Note: 36 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
