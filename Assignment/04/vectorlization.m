function theta = vectorlization(X,y,theta)
    for i = 1:1000    
        fprintf('Initial point is: [%.4f, %.4f]\n', theta);
       
        gradient = 2 * X'*((X * theta)-y);

        
        fprintf('Value of gradient:[%.4f]\n',gradient);
        theta = theta - (0.01) * gradient;
        fprintf('Next values are: [%.4f, %.4f]\n', theta);
    end
end
