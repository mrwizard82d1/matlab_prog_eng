% A simple vector class

classdef vector
	properties
		x; % x-value of vector
		y; % y-value of vector
	end

	methods
		function this = vector(a, b)
			narginchk(0, 2);
			if nargin == 2 && isnumeric(a) && isscalar(a) && isnumeric(b) && isscalar(b)
				this.x = a;
				this.y = b;
			elseif nargin == 1 && isnumeric(a) && isscalar(a)
				this.x = a;
				this.y = 0;
			elseif nargin == 0
				this.x = 0;
				this.y = 0;
			else
				error('Incorrect actual arguments for vector. (Check the actual argument types.)');
			end
		end
	end
end

