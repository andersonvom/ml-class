function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


Theta = (theta * ones(1,m))';		% m tuples of theta
h_theta = sum( Theta .* X, 2 );		% theta0 * x0 + theta1 * x1
squared_sum = sum( (h_theta - y).^2 );
J = 1/(2*m) * squared_sum;



% =========================================================================

end
