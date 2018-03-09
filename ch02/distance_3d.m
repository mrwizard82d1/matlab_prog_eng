% distance - Calculate the distance between two 3D points
%
% Purpose:
% 	Calculate the distance between two points.
%
% Data dictionary:
%	x1 - The x-coordinate of the first point
%	y1 - The y-coordinate of the first point
%	z1 - The z-coordinate of the first point
%	x2 - The x-coordinate of the second point
%	y2 - The y-coordinate of the second point
%	z2 - The z-coordinate of the second point
%	d - The Euclidian distance between the two points

% Gather the coordinates
x1 = input('Enter the x-coordinate of the first point: ');
y1 = input('Enter the y-coordinate of the first point: ');
z1 = input('Enter the z-coordinate of the first point: ');
x2 = input('Enter the x-coordinate of the second point: ');
y2 = input('Enter the y-coordinate of the second point: ');
z2 = input('Enter the z-coordinate of the first point: ');

% Calculate the distance by subtracting the coordinates, squaring the differences, summing the values and taking the
% square root.
d = sqrt(sum(([x1 y1 z1] - [x2 y2 z2]) .^ 2));

% Tell the user
message = ['The distance between (' num2str(x1) ', ' num2str(y1) ', ' num2str(z1) ') and (' num2str(x2) ', ' ...
num2str(y2) ', ' num2str(z2) ') is ' num2str(d)];
disp(message);

