clc, clear all; close all;

t_i = 0;
t_f = 100;
tspan = [t_i, t_f];
x0 = [2, 0];
mu = 18;
ode = @(t,x) vanderpoldemo(t,x,mu);
[t,y] = ode45(ode, tspan, x0);
y_max = max(y(:,1));
y_min = min(y(:,1));
%[t, y] = ode45(@vanDerPolSim, tspan, x0);

for i = 1:length(t)
    plot(t(i), y(i)),
    axis([t_i t_f 1.5*y_min 1.5*y_max+1])
    hold on
    pause(.00001)
end
