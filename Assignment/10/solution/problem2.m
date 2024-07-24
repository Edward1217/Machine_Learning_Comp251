function h = problem2(Theta1, Theta2, Theta3, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given
%   the trained weights of a neural network (Theta1, Theta2)

m = size(X, 2);

a1 = X;
a2 = sigmoid(Theta1 * [ones(1, m); a1]);
a3 = sigmoid(Theta2 * [ones(1, m); a2]);
a4 = sigmoid(Theta3 * [ones(1, m); a3]);

h = a4;
% =========================================================================

end



function g = sigmoid(z)
    g = 1 ./ (1 + exp(-z));
end


% h( 1,  2,  3) = 0.28. So, ( 1,  2,  3) will be classified as 0.
% h(-1, -4,  2) = 0.57. So, (-1, -4,  2) will be classified as 1.
