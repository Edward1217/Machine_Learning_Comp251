%% ========================= Initialization =========================
clear ; close all; clc

% Load Data
% The columns of X contain x0=1(bias) and x1 and x2=(x1)^2
load('data');


%% ========== Part 1: Train Polynomial Logistic Regression ==========
% Train like a linear logistic regression
theta = zeros(size(X, 2), 1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
theta = fmincg(@(t)(costFunction(t, X, y)), theta, options)

