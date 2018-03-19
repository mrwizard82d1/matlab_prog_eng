% Test script for `Vector3D` class

z = Vector3D;
print_vector_3d(z);

function print_vector_3d(to_print)
	fprintf('Created Vector3D(x=%f, y=%f, z=%f)\n', to_print.x, to_print.y, to_print.z);
end
