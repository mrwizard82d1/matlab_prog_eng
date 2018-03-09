% power_to_load - Calculate the power transferred to a resistive load in an electrical circuit.
%
% Purpose:
%	Calculate and plot the power supplied to a resistive load as a function of the load resistance.
%
% Data dictionary
%
% current -- Current flow to load (Amps)
% load -- Power supplied to load (Watts)
% load_resistance -- Resistence of load
% internal_resistance -- Internal resistance of power source
% voltage -- Voltage of power source (Volts)

% Set constant power source voltage and resistance
voltage = 120;
internal_resistance = 50;

% Create the array of different load resistances
load_resistance = 1:1:100;

% Calculate current flow for each resistance
current = voltage ./ (internal_resistance + load_resistance);

% Calculate the power supplied to the load
load = (current .^ 2) .* load_resistance;

% Plot power dissapated versus load resistance
plot(load_resistance, load);
title('Power dissipated versus load resistance');
xlabel('Load resistance (Ohms)');
ylabel('Power dissipated (Watts)');
grid on; % Turn on a grid to more easily read maximum

