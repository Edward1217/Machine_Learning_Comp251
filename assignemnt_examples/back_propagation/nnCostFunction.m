function [J grad] = nnCostFunction(theta, X, y, input_layer_size, hidden_layer_size, num_labels)
%NNCOSTFUNCTION Implements the neural network cost function for a three layer
%neural network which performs classification
%It will also return gradients of cost with respect to each theta parameter


% Reshape thetas (unrolled into a vector and passed to nnCostFunction) back
% into the parameters Theta1 and Theta2, the weight matrices for our 3 layer neural network
Theta1 = reshape(theta(1: hidden_layer_size*(input_layer_size+1)), hidden_layer_size, input_layer_size + 1);
Theta2 = reshape(theta((hidden_layer_size*(input_layer_size+1)+1):end), num_labels, hidden_layer_size + 1);
 
% Setup some useful variables m, num_labels
num_labels = size(Theta2,1);
m = size(X, 1);

% initialize return values J, Theta1_grad, Theta2_grad
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% put your dataset in vertical format
% calculating labels in vector format based on observed labels in y
X = X';
y = y';
yVec = zeros(num_labels, m);
for c = 1:num_labels
    yVec(c,:) = (y == c);
end

% loop over data points and calculate cost and gradients for each point
for i = 1:m
    % forward propagation for point x(i)
    a1 = X(:,i);
    a1 = [1; a1];
    
    a2 = sigmoid(Theta1 * a1);
    a2 = [1; a2];
    
    a3 = sigmoid(Theta2 * a2);
    h = a3;
    
    
    
    
    % accumulate cost for point x(i)
    J = J + sum(-yVec(:,i) .* log(h) - (1 - yVec(:,i)).* log(1-h));
    
    
    
    
    % back propagation for point x(i)
    delta3 = h - yVec(:,i);
    delta2 = ((Theta2)' * delta3) .* a2 .* (1 - a2);
    
    % accumulate gradients of cost with respect to each theta parameter and
    % accumulate for point x(i)
    Theta2_grad = Theta2_grad + (delta3 * (a2)');
    Theta1_grad = Theta1_grad + (delta2(2:end) * (a1)');
end

% Unroll gradients
grad = [Theta1_grad(:); Theta2_grad(:)];

end
