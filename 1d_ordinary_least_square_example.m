close all; 
clear all; 



% generate random data 
data = rand(1, 100)/2 + 3.5;

% plot the generated data
figure(1); 
plot(data, 'bx');
axis ([0 100 0 5]);
hold on; 

% apply the least square solution for 1-D

c_est = 1 / length(data) *sum(data)
%f_est = [1:100; ones(100)*c_est];
x_value = 1:100; 
plot(x_value, c_est, 'ro'); 

legend("data", "1D Least Square Estimation"); 
