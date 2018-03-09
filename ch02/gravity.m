% gravity - Calculate height and velocity of a ball under Earth's gravity
%
% Purpose
%	Calculate the height and velocity of a ball near the Earth as a function of time with a specified initial position
%	and velocity. 
%
% Data dictionary
%	y0: initial height above the earth (m)
%	y: height above the earth at time t (m)
%	v0: velocity of the ball (m/s - positive upward)
% 	v: velocity of the ball at time t (m/s - positive upward)
%	g: (constant) acceleration of gravity (m/s^2)
%	t: time (s)

% Acceleration due to gravity is constant (no air resistance)
g = -9.81;

% Get initial height...
y0 = input('Enter the initial height of the ball (m): ');

% ...and the initial velocity
v0 = input('Enter the initial velocity of the ball (m/s - positive upward): ');

% 10 seconds of flight
t = 0:0.1:10;

% Velocity as a function of time
v = g * t + v0;

% Height as a function of time
y = (1 / 2) * g * t .^ 2 + v0 * t + y0;

% Plot the curve:
plot(t, y);
title('Flight of the Phoenix');
xlabel('Time (s)');
ylabel('Height above the earth (m)');

