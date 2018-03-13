function plotfunc(fun, at_points)

% `plotfunc` plots the function, `fun`, `at_points` specified by the caller.
%
% `plotfunc` accepts a function handle and a vector of points and plots the referenced function at those points.
%
% Data dictionary:
%	fun - The handle of the function to plot.
%	at_points - The vector of points at which to plot the function.
%
%	error_msg - An error message reported if the input arguments are invalid.
%	function_name - The name of the function being plotted.

% Validate the actual (input) parameters
error_msg = nargchk(2, 2, nargin);
error(error_msg);

% Plot function at points
plot(at_points, fun(at_points));
function_name = func2str(fun);
title(['\bfPlot of ' function_name '(x) vs x']);
xlabel('\bfx');
ylabel(['\bf' function_name '(x)']);
grid on;

