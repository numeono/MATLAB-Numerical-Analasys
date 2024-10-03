% Computes numerical derivative approximations of cos(x) and
% identifies minimal errors for further analysis. 

% initialize variables
x = pi/4;
n = 40;
m = 7;

% create arrays
errorResults = zeros(1, n); % stores aboslute errors
comparisonResults = zeros(1,m);

% compute the approximation for each hn and the absolute error
for i = 1:n
    h = hn(i);
    % finite difference approximation
    approx = approximation(x, h);
    % absolute error compared to the true derivative
    errorResults(i) = absoluteError(actualDerivative(x), approx);
end

% store two smallest errors
twoSmallestErrors = mink(errorResults,2);

% n1 and n2 average
nAvg =  26.5;

% find the difference between twoSmallestErrorsAvg/53 and 1/integer for all integers up to m
n53 = nAvg/53;
for i = 1:m
    comparisonResults(i) = (1/i)-n53;
end

% return the integer that makes 1/integer closest to twoSmallestErrorsAvg
smallestDifference = min(abs(comparisonResults));

% print results
format long e
disp('Results array:');
disp(errorResults);
disp('Two smallest errors:');
disp(twoSmallestErrors(1));
disp(twoSmallestErrors(2));
disp('Average of the two ns that produces those:');
disp(nAvg)
disp('find the difference between nAvg/53 and 1/integer for all integers up to m');
disp(comparisonResults)
disp('smallest difference found');
disp(smallestDifference)

% define functions
function h = hn(n)
    h = 2^-n; % applies hn to each element of nValues
end

function approx = approximation(x, h)
    approx = (cos(x + h) - cos(x)) / h;
end

function deriv = actualDerivative(x)
    deriv = -sin(x);
end

function error = absoluteError(r, q)
    error = abs(r - q);
end
