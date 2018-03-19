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

function test_default_constructor_all_arguments(test_case)
	expected_properties = [1, 2, 3];
	sut = Vector3D(1, 2, 3);
	actual_properties = [sut.x, sut.y, sut.z];
	verifyThat(test_case, actual_properties, matlab.unittest.constraints.IsEqualTo(expected_properties));
end

function test_plus(test_case)
	a = Vector3D(1, 2, 3);
	b = Vector3D(-3, 2, -1);
	c = a + b;
	verifyThat(test_case, [c.x, c.y, c.z], matlab.unittest.constraints.IsEqualTo([-2, 4, 2]));
end

function test_minuend(test_case)
	a = Vector3D(1, 2, 3);
	b = Vector3D(-3, 2, -1);
	d = a - b;
	verifyThat(test_case, [d.x, d.y, d.z], matlab.unittest.constraints.IsEqualTo([4, 0, 4]));
end

function test_equals_aliases(test_case)
	a = Vector3D(1, 2, 3);
	b = a;
	verifyThat(test_case, a == b, matlab.unittest.constraints.IsTrue);
end

function test_equals_values(test_case)
	a = Vector3D(1, 2, 3);
	b = Vector3D(1, 2, 3);
	verifyThat(test_case, a == b, matlab.unittest.constraints.IsTrue);
end

function test_not_equals_aliases(test_case)
	a = Vector3D(1, 2, 3);
	b = a;
	verifyThat(test_case, a ~= b, matlab.unittest.constraints.IsFalse);
end

function test_not_equals_values(test_case)
	a = Vector3D(1, 2, 3);
	b = Vector3D(1, 2, 3);
	verifyThat(test_case, a ~= b, matlab.unittest.constraints.IsFalse);
end

