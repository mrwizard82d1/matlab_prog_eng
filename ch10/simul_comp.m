% simul_comp - Compare solving simultaneous equations using full and sparse matrices.
%
% Script to solve a system of 8 linear equations in 8 unknows (a * x = b), using both full and sparse matrices. When
% finished, compare the results of the different implementations and their memory usage.
%
% Data dictionary
%	a - Coefficients of x (full matrix)
%	as - Coefficients of x (sparse matrix)
%	b - Coefficients of x (full matrix)
%	bs - Coefficients of x (sparse matrix)
%	x - Solution (full matrix)
%	xs - Solution (sparse matrix)

% Define the coefficients of the equation a * x = b for the full matrix
a = [ 1.0 0.0 1.0 0.0 0.0 2.0 0.0 -1.0;
	  0.0 1.0 0.0 0.4 0.0 0.0 0.0 0.0;
	  0.5 0.0 2.0 0.0 0.0 0.0 -1.0 0.0;
	  0.0 0.0 0.0 2.0 0.0 1.0 0.0 0.0;
	  0.0 0.0 1.0 1.0 1.0 0.0 0.0 0.0;
	  0.0 0.0 0.0 1.0 0.0 1.0 0.0 0.0;
	  0.5 0.0 0.0 0.0 0.0 0.0 1.0 0.0;
	  0.0 1.0 0.0 0.0 0.0 0.0 0.0 1.0 ];

b = [ 3.0 2.0 -1.5 1.0 -2.0 1.0 1.0 1.0 ]';

% Define the coefficients of the equation a * x = b for the sparse matrix solution
as = sparse(a);
bs = sparse(b);

% Solve the system using full matrices
disp('Full matrix solution');
x = a \ b

% Solve the same system using sparse matrices
disp('Sparse matrix solution');
xs = as \ bs

% Show workspace
disp('Workspace with both solutions.');
whos

