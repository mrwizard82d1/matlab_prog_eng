% test_preallocate - Compare time of preallocating and growing cell arrays
%
% Test the creation of cell arrays with and without preallocation.
%
% Data dictionary
%	a - created cell array
%	maxvals - maximum values in cell array

% Create array without preallocation
clear all
maxvals = 200000;
tic
for ii = 1:maxvals
	a{ii} = [ 'Element ' int2str(ii) ];
end
% elapsed_time = toc;
% fprintf('Elapsed time without preallocation = %f\n', elapsed_time);
fprintf('Elapsed time without preallocation = %s\n', num2str(toc));
% disp(['Elapsed time without preallocation = ' num2str(toc)])

% Create array with preallocation
clear all
maxvals = 200000;
tic
a = cell(1, maxvals);
for ii = 1:maxvals
	a{ii} = [ 'Element ' int2str(ii) ];
end
% elapsed_time = toc;
% fprintf('Elapsed time with preallocation = %f\n', elapsed_time);
fprintf('Elapsed time with preallocation = %s\n', num2str(toc));
% disp(['Elapsed time with preallocation = ' num2str(toc)])

