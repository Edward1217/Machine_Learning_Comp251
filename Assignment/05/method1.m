function [theta0,theta1,theta2] = method1 (theta0,theta1,theta2)
    for i = 1:100
        fprintf('initial point is [%.4f, %.4f,%.4f]\n',theta0, theta1,theta2);
        gradient0 = (8 * theta0) + (6 * theta2) - 12;
        gradient1 = (20 * theta1) + (4 * theta2) -10;
        gradient2 = (6 * theta0) + (4 * theta1) + (30 * theta2);
        fprintf('gradient are [%.4f, %.4f,%.4f]\n',gradient0,gradient1,gradient2)

        theta0 = theta0 - 0.01 * gradient0;
        theta1 = theta1 - 0.01 * gradient1;
        theta2 = theta2 - 0.01 * gradient2;
        fprintf('next point is [%.4f, %.4f,%.4f]\n\n',theta0, theta1,theta2);
    end
end