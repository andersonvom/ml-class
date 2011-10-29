function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------


theta = pinv(X'*X) * X' * y;	% this will compute the correct value even if
				% (X' * X) is not invertible. pinv calculates
				% the pseudo-inverse of a matrix.

% -------------------------------------------------------------


% ============================================================

end
