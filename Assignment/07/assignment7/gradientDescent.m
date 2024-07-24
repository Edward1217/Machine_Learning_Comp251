function theta = gradientDescent(X,y,theta)
    for i = 1:1000
        fprintf('initial thetas are [%.4f,%.4f]\n',theta');

        gradient = X' * (sigmoid(X * theta) -y);
        fprintf('gradients are[%.4f,%.4f]\n',gradient');

        theta = theta -(0.05) * gradient;
        fprintf('next thetass are [%.4f,%.4f]\n\n',theta');
    end
end

function g = sigmoid(z)
    g = 1 ./ (1 + exp(-z));
end


%The optimal parameters for theta0 and theta1 are determined to be -5.2739 and 1.1233.
%The probability of some new observation x = 10 to have y = 1 is 0.9974