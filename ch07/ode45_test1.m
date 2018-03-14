% ode45_test1 - Solves ordinary differential equations using Runga-Kutta (4,5) integration.
%
% Solves an ordinary differential equation of the form dy/dt + 2 * y = 0 with the initial condition of y(0) = 1.
%
% Data dictionary
%	odefun_handle - Handle to function that defines the derivative (to be integrated)
%	tspan - A duration for which to solve this equation
%	y0 - The initial condition for the equation
%	t - Array of solution times
%	y - Array of solution values

function main
% Create a handle to the function to integrate
odefun_handle = @fun1;

% Solve the equation in the range [0, 5] seconds
tspan = [0 5];

% Set the initial conditions
y0 = 1;

% Call the ordinary differential equation solver
[t y] = ode45(odefun_handle, tspan, y0);

% Plot the results
figure(1);
plot(t, y, 'b-', 'LineWidth', 2);
grid on
title('\bfSolution of Ordinary Differential Equation');
xlabel('\bfTime(s)');
ylabel('\bfy''');
end

% Calculate the derivative of the function
function yprime = fun1(t, y)
yprime = -2 * y;
end

