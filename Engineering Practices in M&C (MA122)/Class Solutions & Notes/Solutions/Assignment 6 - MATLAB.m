%% Q1. A factorial is the product of all the integers from 1 to N. In Matlab, find the Factorial for N = 5.
N = 5;
fact = 1;
for k = 1:N
    fact = fact * k;
end
disp(fact); % Output: 120


%% Q2. Use a for loop to create a vector containing the first 10 elements in the harmonic series
harmonic = [];
for k = 1:10
    harmonic = [harmonic, 1/k];
end
disp(harmonic);


%% Q3. Use a for loop to create a vector containing the first 10 elements in the alternating harmonic series
alt_harmonic = [];
for k = 1:10
    sign = (-1)^(k+1); % Alternating sign
    alt_harmonic = [alt_harmonic, sign/k];
end
disp(alt_harmonic);


%% Q4. Calculate the sum of series -> S = 1 − (x^2)/2! + (x^4)/4! − (x^6)/6! + (x^8)/8! for x=1.5
x = 1.5; % Define x
n_terms = 4; % Number of terms (excluding the initial 1)
S = 1; % Initialize sum with the first term (1)

for k = 1:n_terms
    % Compute factorial of (2k) manually
    fact = 1;
    for m = 1:2*k
        fact = fact * m;
    end
    
    % Compute the current term: (-1)^k * x^(2k) / (2k)!
    term = (-1)^k * x^(2*k) / fact;
    
    % Add the term to the sum
    S = S + term;
end

disp(['Sum of the series for ', num2str(n_terms), ' terms: ', num2str(S)]);



%% Q5. Write the Matlab program to obtain the sum of all even number from 0 to 20 using for loop statement.
sum_even = 0;
for num = 0:2:20
    sum_even = sum_even + num;
end
disp(sum_even); % Output: 110


%% Q6. Write the program to find the average value of given any 10 number using for loop statement. 
% Check the program with the following values : 35, 24, 5, 6, 4, 10, 23, 45, 2 
numbers = [35, 24, 5, 6, 4, 10, 23, 45, 2, 0]; % 10 numbers
sum_num = 0;
for i = 1:10
    sum_num = sum_num + numbers(i);
end
avg = sum_num / 10;
disp(avg);


%% Q7. Repeat the preceding problem, this time using a while loop
numbers = [35, 24, 5, 6, 4, 10, 23, 45, 2, 0];
sum_num = 0;
i = 1;
while i <= 10
    sum_num = sum_num + numbers(i);
    i = i + 1;
end
avg = sum_num / 10;
disp(avg);


%% Q8. Write a program, using while loop, for finding square of integers less than 5.
k = 0;
while k < 5
    disp(k^2);
    k = k + 1;
end


%% Q9. Write the Matlab program, to test whether or not π^e is greater than, or equal to, e^π 
pi_val = 3.141592653589793;
e_val = 2.718281828459045;

% Compute π^e using logarithms (avoid built-in power)
pi_pow_e = exp(e_val * log(pi_val)); % Equivalent to π^e

% Compute e^π
e_pow_pi = exp(pi_val * log(e_val)); % Equivalent to e^π

if pi_pow_e > e_pow_pi
    disp('π^e > e^π');
elseif pi_pow_e == e_pow_pi
    disp('π^e = e^π');
else
    disp('π^e < e^π'); % This will be the output
end
%% Q9. Alternate Method 
%% Test whether π^e ≥ e^π
e = exp(1);     % Euler's number
% Compare the values
if pi^e >= e^pi
    fprintf('π^e is greater than or equal to e^π.\n');
else
    fprintf('π^e is less than e^π.\n');
end
% or we can also use while loop
%% Q9. Test whether π^e ≥ e^π using while loop

% Define constant
e = exp(1);     % Euler's number

% Initialize a flag
check = true;

% Use while loop for comparison
while check
    if pi^e >= e^pi
        fprintf('π^e is greater than or equal to e^π.\n');
    else
        fprintf('π^e is less than e^π.\n');
    end
    % End the loop after one check
    check = false;
end



%% Q10. In Matlab, compute the Fibonnaci sequence defined by 
% f1 = 0, f2 = 1 and fn = fn−1 + fn−2. 
% Using for loop and if condition
N = 10; % Number of terms
fib = zeros(1, N);
fib(1) = 0; % f₁ = 0
fib(2) = 1; % f₂ = 1
for n = 3:N
    fib(n) = fib(n-1) + fib(n-2);
end
disp(fib);



%% Q11. Draw graphs of sin(nx) on the interval [−1, 1] for n = 1, 2, 3, 4, 5, 6, 7, 8

% The Taylor series approximation for sin⁡(nx), sin(nx) is used to avoid the built-in sin function.

% The loop calculates each term of the series manually and sums them up.

% The plot shows all 8 curves on the same axes for comparison.

% Define the interval
x = linspace(-1, 1, 1000); % 1000 points between -1 and 1

% Initialize figure
figure;
hold on;

% Loop over n = 1 to 8
for n = 1:8
    % Initialize y values for sin(nx)
    y = zeros(size(x));
    
    % Compute sin(nx) using Taylor series approximation (5 terms)
    for i = 1:length(x)
        nx = n * x(i); % nx term
        % Taylor series: sin(nx) ≈ nx - (nx)^3/3! + (nx)^5/5! - (nx)^7/7! + (nx)^9/9!
        y(i) = nx - (nx^3)/6 + (nx^5)/120 - (nx^7)/5040 + (nx^9)/362880;
    end
    
    % Plot the result
    plot(x, y, 'DisplayName', ['n = ', num2str(n)]);
end

% Add labels and legend
xlabel('x');
ylabel('sin(nx)');
title('Plot of sin(nx) for n = 1 to 8 (Taylor Series Approximation)');
legend('show');
grid on;
hold off;


%% Q12. For any n build the n × n matrix 
% Define n (example: n = 5)
n = 5;

% Initialize the matrix A with zeros
A = zeros(n, n);

% Fill the matrix according to the pattern
for i = 1:n
    for j = 1:n
        if j == 1 && i >= 1  % First column: all 1s
            A(i, j) = 1;
        elseif j <= i         % Lower triangular part (including diagonal)
            A(i, j) = 1;
        else                  % Upper triangular part (excluding diagonal)
            A(i, j) = 0;
        end
    end
end

% Display the matrix
disp('The matrix A is:');
disp(A);



