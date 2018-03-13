function function_handles
fprintf('Creating function handles\n');
handle_1 = @my_func;
handle_2 = str2func('my_func');

are_handles_equal = isequal(handle_1, handle_2);
fprintf('isequal(handle_1, handle_2) returns %s\n', as_true_false(are_handles_equal));

fprintf('\nInvoking functions through handles\n');
fprintf('@my_func(4) returns %d\n', handle_1(4));
fprintf('str2func(''my_func'') returns %d\n', handle_2(4));

fprintf('\nInvoking a function of no aruments through a function handle **requires** parentheses\n');
h1 = @randn;
fprintf('h1() returns %d\n', h1());

fprintf('\nInvoking a function handle through `feval`\n');
fprintf('`feval(handle_1, 4)` returns %d\n', feval(handle_1, 4));

fprintf('\n`func2str` supports printing of named functions:\n');
fprintf('`func2str(handle_1)` returns %s\n', func2str(handle_1));
fprintf('And anonymous functions:\n');
h2 = @(x) A * x.^2;
fprintf('`func2str(h2)` returns %s\n', func2str(h2));

function result_str = as_true_false(n)
if n
	result_str = 'true';
else
	result_str = 'false';
end

