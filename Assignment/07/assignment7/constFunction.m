function J = constFunction(X,y,theta)
    J = sum(-y .* log(sigmoid(X * theta)) - (1-y) .* log(1-sigmoid(X * theta)));
end


function g = sigmoid(z)
    g = 1 ./ (1 + exp(-z));
end


%J(θ0 = −6,θ1 = 3) = 25.9767