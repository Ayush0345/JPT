%% Preparing Data for Bayesian Estimation

model_data.y_growth = JPTData.Y_growth;
model_data.c_growth = JPTData.C_growth;
model_data.inv_growth = JPTData.Inv_growth;
model_data.Inflation = JPTData.Inflation; 
model_data.Interest_Rate = JPTData.I_rate;  
model_data.labor = JPTData.Labor;  
model_data.wage_growth = JPTData.Wage_growth;

save('model_data.mat', 'model_data');

jpt = load("model_data.mat");
jpt = rmmissing(jpt);
disp(jpt.model_data)

