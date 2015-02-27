function x_dot = vanDerPolSim(t, x, mu)
%mu = 5;
x1_dot = x(2);
x2_dot = mu*(1-x(1)^2)*x(2) - x(1);

x_dot = [x1_dot; x2_dot];