function result = test_nested_1

% the top-level function

% define some variables accessible to all
a = 1;
b = 2;
x = 0;
y = 9;

% display tpo-level variables before doing anything
display_variables('Before call to (nested) `fun1`', a, b, x, y);

% call nested function, `fun1`, passing x and changing x
x = fun1(x);

% display top-level variables after call to `fun1`
display_variables('After call to (nested) `fun1`', a, b, x, y);

	% declare a nested function
	function result = fun1(y)
	% note that `y` shadows the variable of the same name in the outer scope

	% display all variables at beginning of `fun1`
	display_variables('At start of call to `fun1`', a, b, x, y);

	y = y + 5; % local variable
	a = a + 1; % host function variable
	result = y;

	display_variables('At end of call to `fun1`', a, b, x, y);
	end

	result = x;

end

function display_variables(prefix, a, b, x, y)
fprintf('%s:\n', prefix);
fprintf('a, b, x, y = %2d %2d %2d %2d\n', a, b, x, y);
end
