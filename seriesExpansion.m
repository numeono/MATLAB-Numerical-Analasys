% Define the value of pi/6 
x = pi / 6;

% Pre-allocate an array to store the results
results = zeros(1, 20);

% Loop to compute the formula for n = 0 to 19
for n = 0:19
    results(n+1) = 1 / factorial(n+1) * (x)^(n+1);
end

% Display the results with corresponding n values
disp('n      Result');
disp('-----------------');
for n = 0:19
    fprintf('%d    %.10e\n', n, results(n+1)); % Using scientific notation
end
