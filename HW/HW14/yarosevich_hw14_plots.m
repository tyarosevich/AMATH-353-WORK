clc; clear all; close all;

x_mesh = linspace(-2*pi, 2*pi, 1000);
% x_mesh_R = x_mesh_R(2:end);
% x_mesh_L = linspace(-2*pi, 1,100);
figure
hold on
for x0 = linspace(-2*pi, 2*pi, 100)
    if x0 < 1
        t = x_mesh - x0;
    elseif x0 > 1
        t = sqrt(2) * (x_mesh - x0);
    end
    plot(x_mesh, t, 'Color', 'b')

end
t_s = ((x_mesh - 1) * pi) / (2 * sqrt(2));
plot(x_mesh, t_s, 'r')

xlabel('x')
ylabel('t')
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
axis([0 4 0 4])
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
