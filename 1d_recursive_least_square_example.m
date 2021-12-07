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
c_prev = 0; 
c_est  = 0; 

for i=1:length(data)
  c_est = c_prev + 1/i*(data(i) - c_prev)  
  c_prev = c_est; 
endfor


x_value = 1:100; 
plot(x_value, c_est, 'ro'); 

legend("data", "1D Least Square Estimation"); 
