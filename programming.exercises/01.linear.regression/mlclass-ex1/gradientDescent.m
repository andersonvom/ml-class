function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    pd0 = 0; % partial derivative 0
    pd1 = 0; % partial derivative 1
    for i = 1:m
      h_theta = theta(1)*X(i,:)(1) + theta(2)*X(i,:)(2);
      
      pd0 = pd0 + ( h_theta - y(i) );
      pd1 = pd1 + ( h_theta - y(i) ) * X(i,:)(2);
    endfor
    pd0 = pd0 / m;
    pd1 = pd1 / m;

    theta0 = theta(1) - alpha * pd0;
    theta1 = theta(2) - alpha * pd1;

    theta = [theta0 ; theta1];

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
