function [J, grad] = costFunction(theta, X, y)
    
    J = sum(-y .* log(sigmoid(X * theta)) - (1-y) .* log(1-sigmoid(X * theta)));
    grad = X' * (sigmoid(X * theta) - y);
    
end

