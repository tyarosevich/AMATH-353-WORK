clc; clear all; close all;

x_mesh = linspace(-1.8, 1.8, 100);
x0_list = zeros(1, length(x_mesh));
t = .6;
%fun1 = @(x0, x) (x - x0) .* exp(x0.^2);

for i = 1:length(x_mesh)
x = x_mesh(i);
fun = @(x0) x0 - x + t * exp(-x0^2);
x0_list(i) = fzero(fun, x);

end

u = exp(-x0_list.^2);
%plot(x_mesh, u)
%%
figure
hold on
for x0 = linspace(-2, 2, 50)
    t = (x_mesh - x0) .* exp(x0.^2);
    plot(x_mesh,t, 'Color', 'b')

    xlabel('x')
    ylabel('t')
end
axis([-1.8 1.8 0 2])
hold off