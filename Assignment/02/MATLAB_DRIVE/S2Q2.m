function[] = S2Q2(theta0, theta1,alpha)
    for i = 1:5
        fprintf("initial point is [%.2f, %.2f]\n",theta0,theta1)

        gradient0 = (6 * theta0) + (20 * theta1) -12;
        gradient1 = (76 * theta1) + (20 * theta0) -42;
        fprintf("gradient of J is [%.2f, %.2f]\n",gradient0,gradient1)

        theta0 = theta0 -(alpha) * gradient0;
        theta1 = theta1 -(alpha) * gradient1;
        fprintf("next point becomes [%.2f, %.2f]\n\n",theta0,theta1)

    end
end

% theta0 is reaching 1.41 and theta1 are reaching 0.18, 
% the minimun point of J is (1.41, 0.18)