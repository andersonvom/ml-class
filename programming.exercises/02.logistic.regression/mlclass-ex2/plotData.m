function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

adm  = find(y == 1);	% Admitted
nadm = find(y == 0);	% Not Admitted

plot( X( adm, 1), X( adm, 2), 'k+', 'LineWidth',         2, 'MarkerSize', 7 );
plot( X(nadm, 1), X(nadm, 2), 'bo', 'MarkerFaceColor', 'y', 'MarkerSize', 7 );

legend("Admitted", "Not Admitted");
legend("boxon");
xlabel('Exam 1 Score');		% Set the x-axis label
ylabel('Exam 2 Score');		% Set the y-axis label






% =========================================================================



hold off;

end
