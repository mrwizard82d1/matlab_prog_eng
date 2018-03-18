% Script to test `MyTimer`

% Create the instance to test.
sut = MyTimer();

% Solve a 1000x1000 set of simultaneous equations.
A = rand(1000, 1000);
B = rand(1000, 1);
x = A \ B;

% Display the elapsed time
disp(['The time to solve a 1000x1000 set of equations is ', num2str(sut.elapsedTime()), '.']);

% Reset the timer
sut.resetTimer();

% Solve a 10000x10000 set of simultaneous equations.
A = rand(10000, 10000);
B = rand(10000, 1);
x = A \ B;

% Display the elapsed time
disp(['The time to solve a 10000x10000 set of equations is ', num2str(sut.elapsedTime()), '.']);

