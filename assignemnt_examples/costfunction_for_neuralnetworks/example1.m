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
       
%% ================ Part 2: Loading Parameters ================
% In this part of the exercise, we load some pre-trained 
% neural network parameters.
% Load the weights into variables Theta1 and Theta2
load('params1.mat');

%% ================= Part 3: Implement Cost =================
%  The file nnCostFunction will receive a set of Theta values (not
%  necessarily the optimal Theta values) in Theta1 and Theta2 as inputs as
%  well as our dataset in X and y (each row is a different data point). It
%  will calculate the cost of using the given thetas to make predictions on
%  the points given in X and y

J = nnCostFunction(Theta1, Theta2, X, y);
fprintf('\nThe cost of making predictions for the given dataset using the provided theta values: %f\n', J);
