function [nvals, varargout] = test2(scale)
% nvals - the number of random values returned
% varargout - the random values returned
% input_error_msg - error message if invalid actual arguments
narginchk(1, 1);
nargoutchk(1, Inf);

nvals = nargout - 1;
for ii = 1:nvals
	varargout{ii} = randn * scale;
end
