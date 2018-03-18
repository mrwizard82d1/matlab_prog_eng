function result = to_polar(vector)

% to_rec - Convert a vector from rectangular coordinates to polar coordinates
%
% Converts a vector in rectangular coordinates to the same vector in polar coordinates.
%
% Data dictionary:
%	vector - vector in rectangular coordinates
%	result - transformed vector in polar coordinates (theta in degrees)

% Validate input arguments
narginchk(1, 1);

if ~is_in_rectangular_coordinates(vector)
	error('Input argument is does not contain fields "x" and "y."');
end

result.r = sqrt(vector.x .^ 2 + vector.y .^ 2);
result.theta = to_degrees(atan2(vector.y, vector.x));

end

function result = is_in_rectangular_coordinates(vector) 
result = isfield(vector, 'x') && isfield(vector, 'y');
end

function result = to_degrees(theta)
result = theta * 180 / pi;
end


