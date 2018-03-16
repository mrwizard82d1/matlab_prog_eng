function [average, values_count] = calc_average(structure, field_name)

% calc_average - Calculates the average of the structure field, `field_name`, of `structure`.
%
% Calculates the average value of the elements in a specified field of a structure array. It returns the average value
% and, optionally, the number of items averaged.
%
% Data dictionary:
%	average - average of the values
%	values_count - The number of values used to compute the average
%
%	to_average - array of values to average

% Validate the actual (input) arguments
narginchk(2, 2);

% Validate the actual output values
nargoutchk(1, 2);

% Create an array of values from the structure
to_average = [structure.(field_name)];

average = mean(to_average);

if nargout == 2
	values_count = length(to_average);
end

