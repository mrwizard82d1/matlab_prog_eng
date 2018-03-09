% distance - Calculate the distance between two points
%
% Purpose:
% 	Calculate the distance between two points.
%
% Data dictionary:
%	x1 - The abscissa of the first point
%	y1 - The ordinate of the first point
%	x2 - The abscissa of the second point
%	y2 - The ordinate of the second point
%	d - The Euclidian distance between the two points

% Gather the coordinates
x1 = input('Enter the x-coordinate of the first point: ');
y1 = input('Enter the y-coordinate of the first point: ');
x2 = input('Enter the x-coordinate of the second point: ');
y2 = input('Enter the y-coordinate of the second point: ');

% Calculate the distance by subtracting the coordinates, squaring the differences, summing the values and taking the
% square root.
d = sqrt(sum(([x1 y1] - [x2 y2]) .^ 2));

% Tell the user
message = ['The distance between (' num2str(x1) ', ' num2str(y1) ') and (' num2str(x2) ', ' num2str(y2) ') is '...
num2str(d)];
disp(message);

