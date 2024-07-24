function [] =plotScatter(X,y)
    hold on;
    scatter(X,y)
    % 添加线性方程 h(x) = 0.1864x + 5.5647
    x_values = linspace(0, 40); % 生成一系列 x 值
    h_x = 0.1864 * x_values + 5.5647; % 计算对应的 h(x) 值
    plot(x_values, h_x, 'r-'); % 绘制直线
    hold off;
end
