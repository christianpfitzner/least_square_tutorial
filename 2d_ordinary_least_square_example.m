% template_2d_least_square.m
close all; 
clear all; 


noise = rand(1, 100)*5;

m = 0.5; 
t = -10; 
x = -49:50; 

data = m*x + t + noise; 


% plot the generated data
figure(1); 
plot(x, data, 'bx');
hold on; 


A_11 = sum(x.*x)
A_12 = sum(x)
A_21 = sum(x)
A_22 = length(x)

b_1 = sum(data.*x);
b_2 = sum(data)

A = [A_11, A_12; 
     A_21, A_22]; 
   
b = [b_1; b_2]; 

% to the calculation and get the lines inclination m and the y axis part
c_est = inv(A) * b

m_est = c_est(1);
t_est = c_est(2);  

f_est = m_est*x + t_est

plot(x, f_est, 'ro'); 

legend("data", "2D Least Square Estimation"); 


