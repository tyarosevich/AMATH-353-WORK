%% Part 1 Characteristic Plot
clc; clear all; close all;

x = linspace(-2, 2, 100);
u1 = 1;
v1 = 1;
figure
hold on
for x0 = linspace(-2, 2, 50)
    if x0 <= 0
        t = (x0 - x)/v1;
    elseif x0 > 0
        t = (x - x0)/v1;
    end
    plot(x, t, 'Color', 'b')

end
for v = linspace(-v1, v1, 20)
    t = x/v;
    plot(x, t, 'Color', 'r')
end

xlabel('x')
ylabel('t')
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
axis([-2 2 0 2])
%% Part 1 profile plots
clc; clear all; close all;
x = linspace(-2, 2, 100);
c = 1;
u1 = 1;
v1 = 1;
figure
for t = 0:.25:1.5;
    c = c + 1;
    u = zeros(1, length(x));
    for i = 1:length(x)
        if x(i) <= -v1*t
            u(i) = u1;
        elseif (-v1*t < x(i)) && (x(i) < v1*t)
            u(i) = .5 * u1 * (1 - (1/v1) * (x(i)/t));
        else
            u(i) = 0;
        end
    end
    plot(x, u)
    set(gca, 'FontSize', [12], 'FontName', 'Times')
    set(gcf,'color','w');
    xlabel('x', 'FontSize', 15)
    ylabel('u', 'FontSize', 15)
    axis([-2 2 -.1 1.1])
    export_fig(sprintf('hw_15_plot%d', c),'-pdf');

    pause(1)
    
end




