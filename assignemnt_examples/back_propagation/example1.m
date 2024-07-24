%% Initialization
clear ; close all; clc

%% Setup the parameters you will use for this
input_layer_size  = 2;  
hidden_layer_size = 2;  
num_labels = 3;         

%% =========== Part 1: Loading and Visualizing Data =============
%  We start by first setting up the datasets. 

%  Training dataset
X = [1     3.2;
     1.5   1;
     3     2;
     4.5   3;
     1.6   4;
     2.8   1;
     3     3.2;
     2.1   0.8;
     1.9   3;
     2     1.2;
     3.9   4;
     3.5   2.9];
 
y = [1;
     2;
     3;
     3;
     1;
     2;
     3;
     2;
     1;
     2;
     3;
     3];
 
 
 
%  Testing dataset 
X_test = [5      5;
          0.5    3
          1.5    0.5];

y_test = [3;
          1
          2];

%% =================== Part 2: Training NN ===================
%  To train a neural network, we will use "fmincg", which you can think of 
%  as a built-in gradient descent. Recall that this advanced optimizer is
%  able to minimize our cost functions efficiently as long as we provide it
%  with the gradient computations.

%  initialize Theta1 and Theta2 to random values
Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
Theta2 = randInitializeWeights(hidden_layer_size, num_labels);
initial_theta = [Theta1(:); Theta2(:)];
%  set options
options = optimset('GradObj', 'on', 'MaxIter', 50);
%  call fmincg to find thetas that minimize cost
[theta, cost] = fmincg(@(t)nnCostFunction(t, X, y, input_layer_size, hidden_layer_size, num_labels), initial_theta, options);


%% ================= Part 3: prediction on the test set =================
%  reshape the optimal theta value calculated by fmincg into two matrices
%  Theta1 and Theta2
Theta1 = reshape(theta(1: hidden_layer_size*(input_layer_size+1)), hidden_layer_size, input_layer_size + 1);
Theta2 = reshape(theta((hidden_layer_size*(input_layer_size+1)+1):end), num_labels, hidden_layer_size + 1);

%  make predictions on X_test using the Theta1 and Theta2 calculated
pred = predict(Theta1, Theta2, X_test)
accuracy = mean(pred == y_test) * 100
