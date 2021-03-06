clc, clear all; close all;
tspan = [0, 20];
x0 = [2, 0];
mu = 0.18;
ode = @(t,x) vanderpoldemo(t,x,mu);
[t,y] = ode45(ode, tspan, x0);
%[t, y] = ode45(@vanDerPolSim, tspan, x0);

for i = 1:length(t)
    figure(1), plot(t(i), y(i,1)),
    axis([0 20 -20 20])
    hold on
    figure(2), plot(t(i), y(i,2), 'm')
    axis([0 20.5 -20 20])
    hold on
    pause(.0001)
end
