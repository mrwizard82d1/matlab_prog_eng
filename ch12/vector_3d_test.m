function tests = vector_3d_test
	tests = functiontests(localfunctions);
end

function test_default_constructor(test_case)
	expected_properties = zeros(1, 3);
	sut = Vector3D;
	actual_properties = [sut.x, sut.y, sut.z];
	verifyThat(test_case, actual_properties, matlab.unittest.constraints.IsEqualTo(expected_properties));
end

function test_default_constructor_one_argument(test_case)
	expected_properties = zeros(1, 3);
	sut = Vector3D(1);
	actual_properties = [sut.x, sut.y, sut.z];
	verifyThat(test_case, actual_properties, matlab.unittest.constraints.IsEqualTo(expected_properties));
end

function test_default_constructor_two_arguments(test_case)
	expected_properties = zeros(1, 3);
	sut = Vector3D(1, 2);
	actual_properties = [sut.x, sut.y, sut.z];
	verifyThat(test_case, actual_properties, matlab.unittest.constraints.IsEqualTo(expected_properties));
end

