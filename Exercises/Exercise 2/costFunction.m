function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.
% Note: grad should have the same dimensions as theta

m = length(y);
h_theta = sigmoid(X * theta);
J = ((y' * log(h_theta)) + (1 - y)' * log(1 - h_theta)) / -m;
grad = (h_theta - y)' * X / m;

end
