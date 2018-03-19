% Models a three-dimensional, rectangular vector.

classdef Vector3D
	properties
		x;
		y;
		z;
	end

	methods(Access=public)
		function this = Vector3D(x, y, z)
			this.x = 0;
			this.y = 0;
			this.z = 0;
		end
	end
end

