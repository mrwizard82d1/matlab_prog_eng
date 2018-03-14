% calc_decay - Calculate the decay of thorium-227 and radium-223 over time
%
% Calculates the amount of thorium-227 and radium-223 left as a function of time, given an initial amount of 1 million
% (1000000) thorium-227 atoms and no atoms of radium-223.
% 
% Data dictionary:
% 	odefun_handle - Function handle of ordinary differential equation
% 	tspan - Duration for which to solve equation
% 	y0 - Initial conditions (The amount of thorium-227 and radium-223 at 0 days)
% 	t - Array of solution times
% 	y - Array of solution values (amounts of thorium-227 and radium-223 at times t)

% Handle of function of ordinary differential equation
odefun_handle = @decay1;

% Solve the equation from 0 to 100 days
tspan = [0 100];

% Set the initial conditions
y0(1) = 1000000; % 1 million atoms of thorium-237 to start
y0(2) = 0; % zero atoms of radium to start

% Solve the ordinary differential equation
[t, y] = ode45(odefun_handle, tspan, y0);

% Plot the results
figure(1);
plot(t, y(:, 1), 'b-', 'LineWidth', 2);
hold on
plot(t, y(:, 2), 'k--', 'LineWidth', 2);

title('\bf      Amount of Thorium-237 and Radium-223 vs Time (Days)');
xlabel('\bfTime (days)');
ylabel('\bfNumber of atoms');
grid on;
hold off;

