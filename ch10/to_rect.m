function result = to_rect(vector)

% to_rec - Convert a vector from polar coordinates to rectangular coordinates
%
% Converts a vector in polar coordinates to the same in rectangular coordinates.
%
% Data dictionary:
%	vector - vector in polar coordinates (theta in degrees)
%	result - transformed vector in rectangular coordinates

% Validate input arguments
narginchk(1, 1);

if ~is_in_polar_coordinates(vector)
	error('Input argument is does not contain fields "r" and "theta."');
end

result.x = vector.r * cos(to_radians(vector.theta));
result.y = vector.r * sin(to_radians(vector.theta));

end

function result = is_in_polar_coordinates(vector) 
result = isfield(vector, 'r') && isfield(vector, 'theta');
end

function result = to_radians(theta)
result = theta * pi / 180;
end

