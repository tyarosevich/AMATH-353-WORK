clc; clear all; close all;
% Root finder for Part 1
x_mesh = linspace(-1.8, 1.8, 100);
x0_list = zeros(1, length(x_mesh));
t = 0 ;
%fun1 = @(x0, x) (x - x0) .* exp(x0.^2);

for i = 1:length(x_mesh)
x = x_mesh(i);
fun = @(x0) x0 - x + t * exp(-x0^2);
x0_list(i) = fzero(fun, x);

end
u = exp(-x0_list.^2);
figure
hold on
plot(x_mesh, u)
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('u(x,2)', 'FontSize', 15)
axis([-1.8 1.8 0 1])

hold off
%export_fig hw_13_plot7.pdf
%% Characteristic Lines for Part 1
figure
hold on
for x0 = linspace(-2, 2, 50)
    t = (x_mesh - x0) .* exp(x0.^2);
    plot(x_mesh,t, 'Color', 'b')

    xlabel('x')
    ylabel('t')
end
    axis([-1.8 1.8 0 2])
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
hold off
export_fig hw_13_plot1.pdf

%% Characteristic Lines for Part 2
clc; clear all; close all;

x_mesh = linspace(-1.8, 1.8, 100);

figure
hold on
for x0 = linspace(-2, 2, 50)
    t = (x_mesh - x0) .* ((1 + x0^2)^2);
    plot(x_mesh,t, 'Color', 'b')

    xlabel('x')
    ylabel('t')
end
set(gca, 'FontSize', [12], 'FontName', 'Times')
set(gcf,'color','w');
xlabel('x', 'FontSize', 15)
ylabel('t', 'FontSize', 15)
axis([1.1 1.15 .9 1])
hold off
export_fig hw_13_plot9.pdf
