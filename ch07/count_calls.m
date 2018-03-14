% Script illustrating function handles as closures

function fhandle = count_calls(initial_value)

% Save the initial value in a local variable. Because this variable is in the scope of the nested function, the returned
% function handle will *capture* that variable as part of the returned handle. Further, because the variable is a local
% variable to the host function, different callers can invoke `count_calls` with different initial values and increment
% these values *independently* of each other.

call_count = initial_value;

% Create the returned function handle referring to the nested function.

fhandle = @increment_count

	% The nested function increments `call_count` of its host function.
	function result = increment_count
	call_count = call_count + 1;
	result = call_count;
	end
end

