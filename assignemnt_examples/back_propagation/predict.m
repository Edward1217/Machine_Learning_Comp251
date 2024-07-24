function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given weights of a neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given
%   the weights of a neural network (Theta1, Theta2)

% calculating some useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);


% put your dataset in vertical format
X = X';

% forward propagation for all the points in X. The results are kept in h
h = zeros(num_labels, m);
for i = 1:m
    a1 = X(:,i);
    a1 = [1; a1];
    
    a2 = sigmoid(Theta1 * a1);
    a2 = [1; a2];
    
    a3 = sigmoid(Theta2 * a2);
    h(:,i) = a3;
end
[val, p] = max(h, [], 1);

p = p';

% =========================================================================


end
