function [J, grad] = nnCostFunction(nn_params, input_layer_size, hidden_layer_size, num_labels, X, y)
%NNCOSTFUNCTION Implements the neural network cost function for a three layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, input_layer_size, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be an "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 3 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), hidden_layer_size, (input_layer_size + 1));
Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex6.m file.
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: Implemente backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%

% transpose X and y
% calculating labels in vector format based on observed labels in y
X = X';
y= y';
yVec = zeros(num_labels, m);
for c = 1:num_labels
    yVec(c,:) = (y' == c);
end
h= zeros(num_labels,m);
% loop over examples in X and calculate and accumulate the cost and gradient
% for each point x(i) at a time
for i = 1:m
    % calculating h(x(i))
    a1 = X(:,i);
    a1 = [1;a1];

    a2 = sigmoid(Theta1 * a1);
    a2 = [1;a2];

    a3 = sigmoid(Theta2 * a2);
    h(:,i) = a3;


    % calculating cost

    J = J + sum(-yVec(:,i).*log(h) - (1-yVec(:,i)).*log(1-h));

    % back propagation implementation
    delta3 = h - yVec(:,i);
    delta2 = (Theta2' * delta3) .* (a2) .* (1-a2);

    Theta2_grad = Theta2_grad + (delta3 * a2');
    Theta1_grad = Theta1_grad + (delta2(2:end) * a1');

end


% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
