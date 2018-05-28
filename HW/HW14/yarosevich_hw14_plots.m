clc; clear all; close all;

x_mesh = linspace(-2*pi, 2*pi, 1000);
% x_mesh_R = x_mesh_R(2:end);
% x_mesh_L = linspace(-2*pi, 1,100);
figure
hold on
for x0 = linspace(-2*pi, 2*pi, 200)
    if x0 < 1
        t = x_mesh - x0;
    elseif x0 > 1
        t = sqrt(2) * (x_mesh - x0);
    end
    plot(x_mesh, t, 'Color', 'b')

end
t_s = ((x_mesh - 1) * pi) / (2 * sqrt(2));
plot(x_mesh, t_s, 'r', 'LineWidth', 2)

xlabel('x')
ylabel('t')
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
axis([.5 3 0 2])
export_fig hw_14_plot1.pdf

%%
clc; clear all; close all;

x_mesh = linspace(-2*pi, 2*pi, 1000);
% x_mesh_R = x_mesh_R(2:end);
% x_mesh_L = linspace(-2*pi, 1,100);
figure
hold on
for x0 = linspace(-2*pi, 2*pi, 100)
    if x0 > 1
        t = x_mesh - x0;
    elseif x0 < 1
        t = (2/sqrt(2)) * (x_mesh - x0);
    end
    plot(x_mesh, t, 'Color', 'b')

end
% t_s = ((x_mesh - 1) * pi) / (2 * sqrt(2));
% plot(x_mesh, t_s, 'r')

xlabel('x')
ylabel('t')
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
axis([0 4 0 4])
export_fig hw_14_plot2.pdf

%% Part 2 initial condition
clc; clear all; close all;
x = linspace(-1, 2, 100);
x1 = x(x <= 0);
x3 = x(x >= 1);
x2 = x(x > 0 & x <1);
u = [ones(1, length(x1)) (1-x2) zeros(1, length(x3))];
plot(x, u)
axis([-1 1.5 -.2 1.5])

%% Part 2 Characteristic Lines
clc; clear all; close all;

x_mesh = linspace(-4, 4, 100);
t_mesh = linspace(0, 4, 100);
% x_mesh_R = x_mesh_R(2:end);
% x_mesh_L = linspace(-2*pi, 1,100);
figure
hold on
for x0 = linspace(-1, 2, 50)
    if x0 < 0
        t = x_mesh - x0;
        plot(x_mesh, t, 'Color', 'b')

    elseif (x0 > 0) && (x0 < 1)
        t = (x_mesh - x0) / (1-x0);
        plot(x_mesh, t, 'Color', 'b')
    else
        line([x0 x0],[t_mesh(1) t_mesh(end)], 'Color', 'b')
    end

end
% t_s = ((x_mesh - 1) * pi) / (2 * sqrt(2));
% plot(x_mesh, t_s, 'r')

xlabel('x')
ylabel('t')
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
axis([-1 2 0 2])
%% Part 2 time plots
x = linspace(-1, 2, 100);
figure
for t = 0:.25:2;
    u = zeros(1, length(x));
    if t < 1
        for i = 1:length(x)
            if x(i) <= t
                u(i) = 1;
            elseif (t < x(i)) && (x(i) < 1)
                u(i) = 1 - (x(i) - t) / (1 - t);
            else
                u(i) = 0;
            end
        end
        plot(x, u)
        axis([-1 2 -.5 2])
        pause(1)
    elseif t >= 1
        for i = 1:length(x)
            if x(i) < .5 * t + .5
                u(i) = 1;
            elseif x(i) > .5 * t + .5
                u(i) = 0;
            end
        end
        plot(x, u)
        axis([-1 2 -.5 2])
        pause(1)
    end
end





%% Part 3 Characteristics
clc; close all; clear all;

x = linspace(-100, 100, 1000);
u1 = 10;
v1 = 5;
u_p = 2 * u1/3; 
u_m = u1/6;
slope1 = 1 / (v1 * (1 - (2 * u_m)/u1))
slope2 = 1 / (v1 * (1 - (2 * u_p)/u1))
figure
hold on
for x0 = linspace(-10, 10,  100)
    if x0 < 0
        t = (x - x0) / (v1 * (1 - (2*u_m)/u1));
    elseif x0 >= 0
        t = (x - x0) / (v1 * (1 - (2*u_p)/u1));
    plot(x, t, 'Color', 'b')
    end
    plot(x, t, 'Color', 'b')

end
% t_s = ((x_mesh - 1) * pi) / (2 * sqrt(2));
% plot(x_mesh, t_s, 'r')

xlabel('x')
ylabel('t')
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
axis([-3 3 0 4])