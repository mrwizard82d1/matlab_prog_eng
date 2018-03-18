% A simple vector class

classdef vector
	properties
		x; % x-value of vector
		y; % y-value of vector
	end

	methods
		function this = vector(a, b)
			narginchk(0, 2);
			if nargin == 2
				this.x = a;
				this.y = b;
			elseif nargin == 1
				this.x = a;
				this.y = 0;
			else 
				this.x = 0;
				this.y = 0;
			end
		end
	end
end

