% template_2d_least_square.m

close all; 

data_y = normrnd (5.5, 2, [1000,1])';
data_x = 1:1000;

data = [data_x; data_y];


plot(data_y); 



c = sum(data_y) / length(data_y)


% to the calculation and get the lines inclination m and the y axis part





% m = 
% t = 