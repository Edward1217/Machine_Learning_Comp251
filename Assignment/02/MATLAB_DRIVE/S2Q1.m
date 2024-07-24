function[] = S2Q1(theta0, theta1,alpha)
    for i = 1:10
        fprintf("initial point is [%.2f, %.2f]\n",theta0,theta1)

        gradient0 = 2 * theta0;
        gradient1 = 2 * theta1;
        fprintf("gradient of J is [%.2f, %.2f]\n",gradient0,gradient1)

        theta0 = theta0 -(alpha) * gradient0;
        theta1 = theta1 -(alpha) * gradient1;
        fprintf("next point becomes [%.2f, %.2f]\n\n",theta0,theta1)

    end
end

% theta0 and theta1 are reaching 0
% the minimun point of J is (0,0)