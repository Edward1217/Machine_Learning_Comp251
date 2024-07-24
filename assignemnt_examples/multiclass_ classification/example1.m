%% Initialization
clear ; close all; clc

%% Setup the parameters you will use for this exercise
input_layer_size  = 2;
hidden_layer_size = 2;
num_labels = 3;

%% =========== Part 1: Loading Data =============
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
 
X_test = [5      5;
          0.5    3];

y_test = [3;
          1];
      
%% ================ Part 2: Loading Parameters ================
% In this part of the exercise, we load some pre-trained 
% neural network parameters.
% Load the weights into variables Theta1 and Theta2
load('params1.mat');

%% ================= Part 3: Implement Predict =================
%  We would like to use this (already trained) nerual network to predict
%  the labels for the testing set. This lets you compute the testing set accuracy.

pred = predict(Theta1, Theta2, X_test);
fprintf('\nTesting Set Accuracy: %f\n', mean(double(pred == y_test)) * 100);
