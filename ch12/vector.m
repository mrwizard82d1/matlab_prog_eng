% A simple vector class

classdef vector
	methods
		function this = vector(a, b)
			this.x = a;
			this.y = b;
		end
	end

	properties
		x; % x-value of vector
		y; % y-value of vector
	end
end

