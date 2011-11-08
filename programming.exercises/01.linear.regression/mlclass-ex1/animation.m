%% Machine Learning Online Class - Exercise 1: Linear Regression

%% Initialization
clear all; close all; clc

%% ========================== Animation ==========================
data = load('ex1data1.txt');
y = data(:, 2);
m = length(y); % number of training examples
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% run gradient descent
fprintf('Running gradient descent ...\n')
[theta, J_history, t_history] = gradientDescent(X, y, theta, alpha, iterations);

% Animate
plotData(X(:,2), y);
hold on;
for i=1:iterations
  clf;
  plot(X(:,2), y, 'rx', 'MarkerSize', 10);
  ylabel('Profit in $10,000s');			% Set the y-axis label
  xlabel('Population of City in $10,000s');	% Set the x-axis label
  hold on;
  plot(X(:,2), X*t_history(:,i), '-');
  sleep(0);
endfor

