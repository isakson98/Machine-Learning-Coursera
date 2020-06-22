function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.


% calculating mean for two different columns (2 columns = 2 features)
% and subtracting the mean from each element in that column  
% looping through all features
for i = 1:columns(X)
    
    mu(1,i) = mean(X(:,i));
    %fprintf('mean: ');
    %fprintf('%.00f',mu(1,i));
    %fprintf('\n');
    X_norm(:,i) = X(:,i) .- mu(1,i);
  
    %get std of original value
    sigma(1,i) = std(X(:,i));
    %fprintf('std: ');
    %fprintf('%.00f',sigma(1,i));
    %fprintf('\n');
    X_norm(:,i) = X_norm(:,i) ./ sigma(1,i);


% ============================================================

end
