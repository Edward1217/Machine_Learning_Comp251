function h = probabilities(Theta1,Theta2,Theta3,X)
    m = size(X,2);
    a1 = X;
    a2 = sigmoid(Theta1 * [ones(1,m);a1]);
    a3 = sigmoid(Theta2 * [ones(1,m);a2]);
    a4 = sigmoid(Theta3 * [ones(1,m);a3]);
    h = a4;
end

function g = sigmoid(z)
    g = 1 ./ (1+ exp(-z));
end


% h(x1,x2,x3) =   0.2849    0.5732