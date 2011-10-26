function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %


    Theta = (theta * ones(1,m))';		% m tuples of theta
    h_theta = sum( Theta .* X, 2 );
    difference = h_theta - y;

    theta_temp = theta;
    num_feats = size(theta,1);
    for i = 1:num_feats
      partial_derivative = 1/m * sum(difference .* X(:,i));
      theta_temp(i) = theta(i) - alpha * partial_derivative;
    endfor

    theta = theta_temp;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
