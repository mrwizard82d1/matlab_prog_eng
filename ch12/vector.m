% A simple vector class

classdef vector
	properties
		x; % x-value of vector
		y; % y-value of vector
	end

	methods
		function result = vector(a, b)
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
				error('Incorrect actual arguments for vector. (Check the actual argument types.)');
			end
		end

		function result = length(this)
			result = sqrt(this.x .^ 2 + this.y .^ 2);
		end

		function result = add(this, another)
			result = vector(this.x + another.x, this.y + another.y);
		end
	end
end

