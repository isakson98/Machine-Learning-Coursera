function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
    
    % components of taking a partial derivative of cost fucntion of linear reg
    hypothesis =  X * theta;
    error = hypothesis - y; 
    sum_of_errors = sum(error);
    partial_J_theta_zero = (1/(m)) * sum_of_errors;

    theta(1,1) = theta(1,1) - alpha * partial_J_theta_zero;
    
    % simult update -> we have not changed theta(1,1)
    % adjusting partial derivative for theta 1
    % only need the 2nd row of x, since that is the x feature we are using
    sum_of_errors = error' * X(:,2);
    partial_J_theta_one = (1/(m)) * sum_of_errors;
  
    theta(2,1) = theta(2,1) - alpha * partial_J_theta_one;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
