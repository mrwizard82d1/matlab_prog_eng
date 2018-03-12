% An illustration of local functions.

% The primary function, `mystats`.

function [avg, med] = mystats(u)

% `mystats(u)` - calculates mean and median of `u`
%
% `mystats` calculates the average and median of a data set using local functions.

n = length(u);
avg = mean(u, n);
med = median(u, n);

function a = mean(v, n)
% Subfunction to calculate the average of `v`.

a = sum(v) / n;

function m = median(v, n)
% Subfunction to calculate the mean of `v`.

% sort the sample
w = sort(v);

if (rem(n, 2) == 1)
	% take the midpoint of an odd number of values
	m = w((n + 1) / 2);
else 
	% take the average of the two middle values of an even number of values
	m = mean([w(n / 2) w((n / 2) + 1)], 2);
end

