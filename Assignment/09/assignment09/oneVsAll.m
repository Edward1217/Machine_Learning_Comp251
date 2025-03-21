function [all_theta] = oneVsAll(X, y, num_labels)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th column of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels) trains num_labels logistic 
%   regression classifiers and returns each of these classifiers in a 
%   matrix all_theta, where the i-th column of all_theta corresponds to the
%   classifier for label i

% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(n + 1, num_labels);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the following code to train num_labels
%               logistic regression classifiers. 
%
% Hint: theta(:) will return a column vector.
%
% Hint: You can use y == c to obtain a vector of 1's and 0's that tell you
%       whether the ground truth is true/false for this class.
%
% Note: For this assignment, we recommend using fmincg to optimize the cost
%       function. It is okay to use a for-loop (for c = 1:num_labels) to
%       loop over the different classes.
%
%       fmincg works similarly to fminunc, but is more efficient when we
%       are dealing with large number of parameters.
%
% Example Code for fmincg:
%
%     % Set Initial theta
%     initial_theta = zeros(n + 1, 1);
%     
%     % Set options for fmincg
%     options = optimset('GradObj', 'on', 'MaxIter', 50);
% 
%     % Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
%     [theta, cost] = fmincg (@(t)(lrCostFunction(t, X, (y == c))), initial_theta, options);
%


%{
for c = 1:num_labels
    % Set Initial theta
    initial_theta = zeros(n + 1, 1);

    % Set options for fmincg
    options = optimset('GradObj', 'on', 'MaxIter', num_labels);

    % Run fmincg to obtain the optimal theta
    [theta, ~] = fmincg(@(t)(lrCostFunction(t, X, (y == c))), initial_theta, options);

    % Store the optimized theta for this class in the matrix all_theta
    all_theta(:, c) = theta;
end
%}
for c = 1:num_labels
    % Set Initial theta
    initial_theta = zeros(n + 1, 1);

    % Set options for fmincg
    options = optimset('GradObj', 'on', 'MaxIter', 50);

    % Run fmincg to obtain the optimal theta
    % This function will return theta and the cost 
    [theta, cost] = fmincg(@(t)(lrCostFunctijon(t, X, (y == c))), initial_theta, options);

    % Assign the calculated theta to the corresponding column in all_theta
    all_theta(:, c) = theta;
end







% =========================================================================


end
