// Replication JPT

var y k L p w s pi c lambda R u phi i k_hat x gw;

varexo eps_z eps_inv eps_m;

parameters alpha delta ip iw gamma h lambda_p lambda_w L_ss pi beta nu zeta_p zeta_w xi s2prime phi_pi phi_x phi_dx rho_R rho_mp rho_z rho_g rho_mu rho_p rho_w rho_b theta_p theta_w sigma_mp sigma_z sigma_g sigma_mu sigma_p sigma_w sigma_b;

//Calibration
delta = 0.025;
g_ss = 1/(1-0.22);
R_ss=(1+gamma)*pi_ss/beta;


// Local Variables

rho = (e^(gamma)/beta) - (1 - delta);

omega = ((1/(1+lambda_p))(alpha^(alpha))(1-alpha)^(1alpha)(1/rho)^alpha)^(1/(1-alpha));

kappa = ((1-zeta_p*beta)*(1-zeta_p))/(zeta_p*(1+p_index*beta));

kappa_w = ((1-zeta_w*beta)*(1-zeta_w))/(zeta_w*(1+beta)*(1+nu(1+(1/lambda_w));





// Model equations in log-linearized form
model;
    // 1. Output gap equation
    y = 

    // 2. Marginal cost equation
    rho_hat = w_hat + L_hat - k_hat;

    // 3. Real marginal cost function
    s_hat = alpha * rho_hat + (1 - alpha) * w_hat;

    // 4. Phillips curve
    pi_hat = beta / (1 + beta * phi_pi) * pi_hat(+1) + phi_pi / (1 + beta * phi_pi) * pi_hat(-1) + ...
             s_hat + lambda_p_hat;

    // 5. Consumption Euler equation
    lambda_hat = h * beta * (c_hat(+1) - h * c_hat) + rho_z * z_hat;

    // 6. Capital utilization equation
    R_hat = R_hat(+1) - z_hat(+1) - pi_hat(+1);

    // 7. Rental rate equation
    rho_hat = chi * u_hat;

    // 8. Investment equation
    phi_hat = delta * phi_hat(-1) + i_hat;

    // 9. Wage setting equation
    w_hat = (1 / (1 + beta)) * w_hat(-1) + beta / (1 + beta) * w_hat(+1) + gw_hat;

    // 10. Wage Phillips curve
    gw_hat = w_hat - (nu * L_hat + lambda_b_hat - lambda_hat);

    // 11. Taylor rule
    R_hat = rho_R * R_hat(-1) + (1 - rho_R) * (phi_pi * pi_hat + phi_x * (x_hat - x_star_hat)) + ...
            phi_dx * (x_hat - x_hat(-1)) + eta_mp_hat;

    // 12. Capital evolution
    k_hat = (1 - delta) * k_hat(-1) + i_hat;

    // 13. Market clearing condition
    y_hat = c_hat + i_hat + g_t;

    // 14. Flexible price output
    x_star_hat = alpha * k_star_hat + (1 - alpha) * L_hat;

    // 15. Flexible wage equation
    lambda_w_hat = lambda_p_hat + eta_mp_hat;

    // 16. Investment with flexible prices
    i_star_hat = rho_mu * i_star_hat(-1) + eta_mp_hat;
end;

shocks;
    var eps_z; stderr sigma_z;
    var eps_inv; stderr sigma_mu;
    var eps_m; stderr sigma_mp;
end;

estimated_params;
    alpha, beta_pdf, 0.3, 0.05;
    p_index, beta_pdf, 0.5, 0.15;
    w_index, beta_pdf, 0.5, 0.15;
    gamma, normal_pdf, 0.5, 0.03;
    h, beta_pdf, 0.5, 0.1;
    lambda_p, normal_pdf, 0.15, 0.05;
    lambda_w, normal_pdf, 0.15, 0.05;
    L_ss, normal_pdf, 0, 0.5;
    pi, normal_pdf 0.5, 0.1;
    beta, gamma_pdf, 0.25, 0.1;
    nu, gamma_pdf, 2, 0.75;
    zeta_p, beta_pdf, 0.66, 0.1;
    zeta_w, beta_pdf, 0.66, 0.1;
    xi, gamma_pdf, 5, 1;
    s2prime, gamma_pdf, 4, 1;
    phi_pi, normal_pdf, 1.7, 0.3;
    phi_x, normal_pdf, 0.13, 0.05;
    phi_dx, normal_pdf, 0.13, 0.05;
    rho_R, beta_pdf, 0.6, 0.2;
    rho_mp, beta_pdf, 0.4, 0.2;
    rho_z, beta_pdf, 0.6, 0.2;
    rho_g, beta_pdf, 0.6, 0.2;
    rho_mu, beta_pdf, 0.6, 0.2;
    rho_p, beta_pdf, 0.6, 0.2;
    rho_w, beta_pdf, 0.6, 0.2;
    rho_b, beta_pdf, 0.6, 0.2;
    theta_p, beta_pdf, 0.5, 0.2;
    theta_w, beta_pdf, 0.5, 0.2;
    sigma_mp, inverted_gamma1_pdf, 0.1, 1;
    sigma_z, inverted_gamma1_pdf, 0.5, 1;
    sigma_g, inverted_gamma1_pdf, 0.5, 1;
    sigma_mu, inverted_gamma1_pdf, 0.5, 1;
    sigma_p, inverted_gamma1_pdf, 0.1, 1;
    sigma_w, inverted_gamma1_pdf, 0.1, 1;
    sigma_b, inverted_gamma1_pdf, 0.1, 1;
end;

varobs y_growth c_growth inv_growth Inflation Interest_Rate Labor wage_growth;

estimation(datafile='model_data.mat', mode_compute=3, mh_replic=120000, mh_jscale=0.4);