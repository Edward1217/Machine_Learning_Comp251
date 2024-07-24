function [gradient1] = linearRegtest(X, y, theta0, theta1)
    gradient0 = 0;
    for j = 1:100
        h = (theta1 * X(j)) + theta0;
        gradient0 = gradient0 + (2 * (h - y(j)) * 1);
    end
    gradient1 = 0;
    for j = 1:100
        h = (theta1 * X(j)) + theta0;
        gradient1 = gradient1 + (2 * (h - y(j)) * X(j));
    end

end