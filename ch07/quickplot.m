function quickplot(fun, xlim)

% quickplot - Generate a quick plot of a function
%
% Function `quickplot` generates a quick plot of a function contained in an external `m-file,` between user-specified
% limits (`xlim`).
%
% Variables:
%	fun - Name (character string) of the function to plot
%	xlim - The limits of the plot (in the x-dimension)
%	
%	error_msg - The message displayed if an error is detected in the actual parameters
%	step_count - The number of points to be plotted
%	step_size - The x-distance between each plotted point
%	x - x-values to plot
%	y - p-values to plot

% ensure exactly two input arguments
error_msg = nargchk(2, 2, nargin);
error(error_msg);

% verify the second argument has two elements. Allow these elements to be a row- or column-vector.
if is_2_element_row_vector(xlim) || is_2_element_column_vector(xlim)
	step_count = 100;
	step_size = (xlim(2) - xlim(1)) / step_count;
	x = xlim(1):step_size:xlim(2);
	y = zeros(size(x)); % Pre-allocate function results to avoid reallocation
	h = str2func(fun); % Calculate function handle

	for ii = 1:length(x)
		y(ii) = feval(h, x(ii));
	end

	plot(x, y)
	title(['\bfPlot of function ' fun '(x)']);
	xlabel('\bfx');
	ylabel(['\bf' fun '(x) ']);
else
	error('Incorrect number of elements in xlim');
end

end

function result = is_2_element_row_vector(xlim)
result = size(xlim, 1) == 1 && size(xlim, 2) == 2;
end

function result = is_2_element_column_vector(xlim)
result = size(xlim, 1) == 2 && size(xlim, 2) == 1;
end

