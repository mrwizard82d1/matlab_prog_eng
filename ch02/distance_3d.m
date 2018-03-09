% distance - Calculate the distance between two 3D points
%
% Purpose:
% 	Calculate the distance between two points.
%
% Data dictionary:
%	x1 - The coordinates of the first point (as an array)
%	x2 - The coordinates of the second point (as an array)
%	d - The Euclidian distance between the two points

% Gather the coordinates
x1 = input('Enter the coordinates of the first point (as a row vector): ');
x2 = input('Enter the coordinates of the second point (as a row vector): ');

% Calculate the distance by subtracting the coordinates, squaring the differences, summing the values and taking the
% square root.
d = sqrt(sum((x1 - x2) .^ 2));

% Tell the user
message = sprintf('The distance between (%f, %f, %f) and (%f, %f, %f) is %f\n', ...
x1([1]), x1([2]), x1([3]), x2([1]), x2([2]), x2([3]),  d);
disp(message);

