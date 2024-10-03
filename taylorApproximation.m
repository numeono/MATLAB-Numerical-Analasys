% Evaluates approximations of cos(0.6) using a 5th-degree Taylor polynomial
% around \( \pi/6 \) in both standard and Horner's form.

% Approximation to cos(0.6)
m = 0.6-pi/6;

% Evaluate
result = Q(m);

% Evaluate result 2
result2 = S(m);

% Display result
format long e
disp('Result:');
disp(result);

disp('Result 2:');
disp(result2);

% 5th-degree Taylor polynomial for cos(x) around a = pi/6 in Horner's form.
function Q = Q(t)
    Q = t*(t*(t*(t*(t*(-1/240)+sqrt(3)/48)+1/12)-sqrt(3)/4)-1/2)+sqrt(3)/2;
end

function S = S(t)
    S = (((( -1/240 * t + sqrt(3)/48 ) * t + 1/12 ) * t - sqrt(3)/4 ) * t - 1/2 ) * t + sqrt(3)/2;
end


