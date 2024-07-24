function J = nnCostFunction(Theta1, Theta2, X, y)    
    % setting up some usefule variables
    num_labels = size(Theta2, 1);
    m = size(X, 1);
    
    
    
    % we like to have a point per column rather than per row, when it comes
    % to neural networks. So, we will transpose X
    % y should be converted into one-vs-all version of itself
    X = X';
    yVec = zeros(num_labels, m);
    for c = 1:num_labels
        yVec(c,:) = (y' == c);
    end
    
    
    
    % calculating total cost J by accumulating cost for every point in
    % dataset
    J = 0;
    for i = 1:m
        % forward propagation to calculate the h values for every unit on 
        % the output layer of neural network for input point x(i)
        a1 = X(:,i);
        a1 = [1; a1];
        
        a2 = sigmoid(Theta1 * a1);
        a2 = [1; a2];
        
        a3 = sigmoid(Theta2 * a2);
        h = a3;
        
        % add the cost of input point x(i) to total cost so far
        J = J + sum(-yVec(:,i).*log(h) - (1-yVec(:,i)).*log(1-h));
    end
end