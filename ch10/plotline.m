function plotline(varargin)

% plotline - plots the line (segments) between [x, y] pairs
%
% Function accepts an arbitrary number of [x, y] points and plots a line connecting them. Additionally, it can accept a
% line specification string (in any position) and use that specfication to plot the line (segments).
%
% Data dictionary
%	varargin - cell array containing input arguments (and, optionally, a line specification)
%	
%	ii - index over all input arguments
%	jj - index over all points to connect
%	linespec - the (optional) line specification to pass to the plotting function
%	error_msg - an error message displayed if the input arguments are invalid
% 	x - x-values to plot
%	y - y-values to plot

% Check for a legal number of actual input arguments. We need at least 2 points to plot a line.
error_msg = nargchk(2, Inf, nargin);
error(error_msg);

% Initialize an empty line specification and no points to plot.
linespec = '';
jj = 0;

% Loop over all the actual input arguments extracting points or a line specification
for ii = 1:nargin
	% if this argument is a string
	if ischar(varargin{ii})
		% it must be a line specification
		linespec = varargin{ii};
	else
		% must be a point on a line segment
		jj = jj + 1;
		x(jj) = varargin{ii}(1);
		y(jj) = varargin{ii}(2);
	end
end

% Plot the line (segments)
disp(x);
disp(y);
if isempty(linespec)
	plot(x, y);
else
	plot(x, y, linespec);
end

