% temperature_conversion - Convert Fahrenheit temperatures to Kelvin

%
% Purpose:
%	Convert an input temperature in Fahrenheit to an output temperature
%	Kelvin.
%
% Data dictionary
%
% temperature_f - Temperature in Fahrenheit
% temperature_k - Temperature in Kelvin

% Prompt the user for the input temperature in Fahrenheit
temperature_f = input('Enter the temperature in degrees Fahrenheit: ');

% Convert to Kelvin
temperature_k = (5/9) * (temperature_f - 32) + 273.15;

% Inform the user of the equivalent Kelvin temperature
fprintf('%6.2f degrees Fahrenheit = %6.2f Kelvin\n', temperature_f, temperature_k);

