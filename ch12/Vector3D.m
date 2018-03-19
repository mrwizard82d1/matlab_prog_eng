% Models a three-dimensional, rectangular vector.

classdef Vector3D < handle
	properties(Access=public)
		x;
		y;
		z;
	end

	methods(Access=public)
		function this = Vector3D(x, y, z)
			narginchk(0, 3);

			if nargin < 3
				this.x = 0;
				this.y = 0;
				this.z = 0;
			else
				this.x = x;
				this.y = y;
				this.z = z;
			end
		end

		function result = plus(addend1, addend2)
			result = Vector3D(addend1.x + addend2.x, addend1.y + addend2.y, addend1.z + addend2.z);
		end

		function result = minus(subtrahend, minuend)
			result = Vector3D(subtrahend.x - minuend.x, subtrahend.y - minuend.y, subtrahend.z - minuend.z);
		end

		function result = eq(lhs, rhs)
			result = ((lhs.x == rhs.x) && (lhs.y == rhs.y) && (lhs.z == rhs.z));
		end

		function result = ne(lhs, rhs)
			result = ((lhs.x ~= rhs.x) || (lhs.y ~= rhs.y) || (lhs.z ~= rhs.z));
		end
	end
end

