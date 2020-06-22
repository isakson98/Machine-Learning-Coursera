function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;



% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost ofy . a particular choice of theta
%               You should set J to the cost.
%
%
% tip of the day -> do everything in several lines of code as one line 
% may have uniintended consequences

hypothesis =  X * theta;
error = hypothesis - y; 
squaring = error .^2;
sum_of_errors = sum(squaring);
J = (1/(2*m)) * sum_of_errors;

%J = (1/(2*m)) * sum((hypothesis - y).^2);



% =========================================================================

end
