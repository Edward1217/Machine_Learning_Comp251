function [theta0,theta1,theta2] = method2 (theta0,theta1,theta2)
    for i = 1:100
        fprintf('initial point is [%.4f, %.4f,%.4f]\n',theta0, theta1,theta2);
        gradient0 = 0;
        for j = 1:4
            h = theta0 + theta1*X(j,1) + theta2*X(j,2);
            gradient0 = gradient0 + (2 * (h - y(j)*1));

        end
        gradient1 = 0;
        for j = 1:4
            
        end

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