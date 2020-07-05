function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% we have 5000 examples with 401 features for each example.
% Theta1 holds 25 rows (for all 25 activation units for next layer), where each
% row has 401 theta values to match each feature of each example
% when both matrices are vectorized multiplications for each feature added 
% and are carried on as features for next layer, which will be multiplied by next 
% matrix of thetas, where the end result should be 10 vectors for each 

% 1st layer
% add columns of ones 
X = [ones(size(X, 1), 1) X];

% 2nd layer
Z_2 = X * Theta1';
A_2 = sigmoid(Z_2)
A_2 = [ones(size(A_2, 1), 1) A_2];

% 3rd layer
Z_3 = A_2 * Theta2';
A_3 = sigmoid(Z_3);
[values, col_ind] = max(A_3, [], 2);
p = col_ind;

% =========================================================================


end
