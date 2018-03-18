% A simple, reference vector class

classdef vector_handle < handle
	properties
		x; % x-value of vector
		y; % y-value of vector
	end

	methods
		function result = vector_handle(a, b)
			narginchk(0, 2);
			if nargin == 2 && isnumeric(a) && isscalar(a) && isnumeric(b) && isscalar(b)
				result.x = a;
				result.y = b;
			elseif nargin == 1 && isnumeric(a) && isscalar(a)
				result.x = a;
				result.y = 0;
			elseif nargin == 0
				result.x = 0;
				result.y = 0;
			else
				error('Incorrect actual arguments for vector_handle. (Check the actual argument types.)');
			end
		end

		function delete(this)
			disp('vector_handle deleted');
		end

		function result = length(this)
			result = sqrt(this.x .^ 2 + this.y .^ 2);
		end

		function result = add(this, another)
			result = vector_handle(this.x + another.x, this.y + another.y);
		end
	end
end

