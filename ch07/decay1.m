% decay1 calculates decay rates of thorium-237 and radium-223.
%
% Calculates the decay rates of thorium-237 and radium-223 (yprime) for a concentration (vector) y.
%
% Data dictionary
%	y - Amount of thorium-237 (at index 1) and radium-223 (at index 2)
%	t - Time (in days)

function yprime = decay1(t, y)

% Set decay constants
lambda_thorium = 0.03710636;
lambda_radium = 0.0606428;

% Calculate rates of decay
yprime = zeros(2, 1);
yprime(1) = -lambda_thorium * y(1);
yprime(2) = -lambda_radium * y(2) + lambda_thorium * y(1);

