clc; clear all; close all;

% 1.a.)

c = -1;
t = 1:5;
x = -100:.1:100;
u_xt = @(x, t) exp(-(x - c * t).^2);

f_list = zeros(length(t), length(x));
f_list2 = zeros(length(t), length(x));

for n = 1:length(t)
    f_list(n, :) = u_xt(x, t(n));
end

%% 1.a.) plots
set(gcf,'color','w');

p1 = subplot(1,3,1)
plot(x, f_list(1,:))
xlim([-7 2])
ylim([-.2 1.2])
title('$t = 1$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,2)
plot(x, f_list(3,:))
xlim([-7 2])
ylim([-.2 1.2])
title('$t = 3$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,3)
plot(x, f_list(5,:))
xlim([-7 2])
ylim([-.2 1.2])
title('$t = 5$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')

export_fig plot_1a.pdf


%%
clc; clear all; close all;

% 1.b.)

c = 10;
t = 1:5;
x = -100:.1:100;
u_xt = @(x, t) exp(-(x - c * t).^2);


f_list = zeros(length(t), length(x));
f_list2 = zeros(length(t), length(x));

for n = 1:length(t)
    f_list(n, :) = u_xt(x, t(n));
end

%% 1.b.) plots

set(gcf,'color','w');

p1 = subplot(1,3,1)
plot(x, f_list(1,:))
xlim([5 15])
ylim([-.2 1.2])
title('$t = 1$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,2)
plot(x, f_list(2,:))
xlim([15 25])
ylim([-.2 1.2])
title('$t = 2$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,3)
plot(x, f_list(3,:))
xlim([25 35])
ylim([-.2 1.2])
title('$t = 3$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')

export_fig plot_1b.pdf


%%
clc; clear all; close all;

% 1.c.)

c = 1;
t = 1:5;
x = -100:.1:100;
u_xt = @(x, t) exp(-(x - c * t^2).^2); 


f_list = zeros(length(t), length(x));
f_list2 = zeros(length(t), length(x));

for n = 1:length(t)
    f_list(n, :) = u_xt(x, t(n));
end

%% 1.c.) plots
set(gcf,'color','w');

p1 = subplot(1,3,1)
plot(x, f_list(1,:))
xlim([-2 4])
ylim([-.2 1.2])
title('$t = 1$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,2)
plot(x, f_list(2,:))
xlim([0 8])
ylim([-.2 1.2])
title('$t = 2$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,3)
plot(x, f_list(3,:))
xlim([6 12])
ylim([-.2 1.2])
title('$t = 3$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')

export_fig plot_1c.pdf
%%
clc; clear all; close all;

% 1.d.)

c = 1;
t = 1:5;
x = -100:.1:100;
u_xt = @(x, t) (1/t) * exp(-(x - c * t).^2);  % part d.)

f_list = zeros(length(t), length(x));
f_list2 = zeros(length(t), length(x));

for n = 1:length(t)
    f_list(n, :) = u_xt(x, t(n));
end

%% 1.d.) plots

set(gcf,'color','w');

p1 = subplot(1,3,1)
plot(x, f_list(1,:))
xlim([-2 4])
ylim([-.2 1.2])
title('$t = 1$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,2)
plot(x, f_list(2,:))
xlim([-1 5])
ylim([-.2 1.2])
title('$t = 2$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')


p2 = subplot(1,3,3)
plot(x, f_list(3,:))
xlim([0 6])
ylim([-.2 1.2])
title('$t = 3$', 'FontSize', 12, 'fontweight', 'bold', 'interpreter', 'latex')
ylabel('$u(x, t_{k})$', 'FontSize', 14, 'interpreter', 'latex')

export_fig plot_1d.pdf
%%
% 3.)
clc; clear all; close all;
c = 1; k = 1;
%f = @(x, t) 1./(1 + (x - c * t).^2); % f1
%f = @(x, t) 1./ (2 + cos(k * (x - c * t))); %f2
%f = @(x, t) exp(-t) .* sin(x); %f3

x = -20:.1:20;
t = 1:10;
f_list = zeros(length(t), length(x));
for n = 1:length(t)
    f_list(n, :) = f(x, t(n));
end
%%
for n = 1:length(t)
   plot(x, f_list(n, :))
   xlim([-20 20])
   ylim([-.2 1.2])
   pause(.5) 
   
end
