function [] = linearReg(X, y, theta0, theta1)
    for i = 1:3000
        fprintf('initial point is: [%.4f, %.4f]\n', theta0, theta1);
        
        gradient0 = 0;
        for j = 1:6
        h = (theta1 * X(j)) + theta0;
        gradient0 = gradient0 + (2 * (h - y(j)) * 1);
        end
        gradient1 = 0;
        for j = 1:6
        h = (theta1 * X(j)) + theta0;
        gradient1 = gradient1 + (2 * (h - y(j)) * X(j));
        end
        fprintf('gradients of J are: [%.4f, %.4f]\n', gradient0, gradient1);
        
        theta0 = theta0 - (0.01)*gradient0;
        theta1 = theta1 - (0.01)*gradient1;
        fprintf('next point is: [%.4f, %.4f]\n\n', theta0, theta1);
    end

end

%h(x) = 0.1864x + 5.5647
%h(10) = 0.1864*10 + 5.5647 = 7.4287
