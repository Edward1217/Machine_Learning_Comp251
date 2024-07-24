function[] = S2Q3(theta0, theta1,theta2,alpha)
    for i = 1:100
        fprintf("initial point is [%.2f, %.2f,%.2f]\n",theta0,theta1,theta2)

        gradient0 = (6 * theta0) + (2 * theta2) + theta1 -2;
        gradient1 = (0.5 * theta1) + theta0;
        gradient2 = (2 * theta2) + (2 * theta0);
        fprintf("gradient of J is [%.2f, %.2f,%.2f]\n",gradient0,gradient1,gradient2)

        theta0 = theta0 -(alpha) * gradient0;
        theta1 = theta1 -(alpha) * gradient1;
        theta2 = theta2 -(alpha) * gradient2;
        fprintf("next point becomes [%.2f, %.2f,%.2f]\n\n",theta0,theta1,theta2)

    end
end

% theta0 is reaching 0.98,  theta1 is reaching -1.93 , and theta2 is reaching -0.98 
% the minimun point of J is (0.98, -1.93, -0.98)