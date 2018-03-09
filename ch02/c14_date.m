% c14_date - Calculate age using Carbon 14 dating
%
% Purpose:
%	Calculate the age of an organic sample based on the remaining percentage of Carbon-14 remaining in the sample.
%
% Data dictionary:
%   age -- The age of the sample (years)
%   lambda -- The radioactive decay constant for Carbon-14 (1 / year)
%   percent -- The percentage of carbon-14 remaining in the sample.
%   ratio -- The ratio of carbon-14 remaining in the sample to the original amount of carbon-14

% Set decay constant for carbon-14
lambda = 0.00012097;

% Prompt the user for the percentage of carbon-14 remaining in the sample
percent = input('Enter the percentage of carbon-14 remaining in the sample: ');

% Calculate the ratio and the age
ratio = percent / 100;

age = (-1.0 / lambda) * log(ratio);

% Inform the user of the age of the sample
message = ['The age of the sample is ', num2str(age), ' years.'];
disp(message);

