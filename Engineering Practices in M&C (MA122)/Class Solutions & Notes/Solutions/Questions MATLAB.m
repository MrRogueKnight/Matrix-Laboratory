%%-----------------Problem 1: True/False Questions-----------------
% 1. State whether the following statements are True or False:
% (a) Indentation is required in MATLAB to define code blocks.
disp('1(a) False - Indentation is optional but recommended for readability');

% (b) The eye() function in MATLAB creates a diagonal matrix with ones on the diagonal.
disp('1(b) True - eye(n) creates an n×n identity matrix');

% (c) An algorithm is a series of logical steps that solves one specific problem.
disp('1(c) True - By definition of an algorithm');

% (d) The word true is a valid logical expression.
disp('1(d) True - "true" is a valid logical constant');

% (e) When moving a block of data between arrays, their shapes must match.
disp('1(e) True - Array shapes must be compatible for assignment');

%%-----------------Problem 2: Fill in the Blanks-----------------
% 2(a) Arithmetic operations can be performed collectively on the individual 
%      components of two arrays as long as both arrays ___ or one of them is ___.
disp('2(a) Answer: have the same size, a scalar');

% 2(b) The normal precedence of operators can be overruled by the use of ___.
disp('2(b) Answer: parentheses ()');

% 2(c) A while loop can be repeated a number of times, depending on the ___ being processed.
disp('2(c) Answer: condition');

% 2(d) MATLAB provides a function called ___ to generate a mesh grid for 3D plotting.
disp('2(d) Answer: meshgrid');

% 2(e) The function used to find the determinant of a matrix in MATLAB is ___.
disp('2(e) Answer: det');


%%-----------------Question 3: Answer with Proper Justifications-----------------
%% 3(i) Find the indefinite integral of f(x) = x^2 + 3x + 2 symbolically
syms x;
f = x^2 + 3*x + 2;
int_f = int(f, x);
disp('3(a) Indefinite integral of x^2 + 3x + 2:');
disp(int_f);
disp('Justification: int() computes symbolic integration term-by-term');

%% 3(ii) Determine size of matrix X = [-10:-1:-15; -2:3]
X = [-10:-1:-15; -2:3];
disp('3(b) Size of matrix X:');
disp(size(X));
disp('Justification: First row has 5 elements (-10 to -15 step -1), second row has 6 elements (-2 to 3 step 1)');

%% 3(iii) Difference between clc and clear commands
disp('3(c) Differences:');
disp('clc - Clears only the command window');
disp('clear - Removes variables from workspace');
disp('clear all - Removes variables and functions from workspace');

%% 3(iv) Solve system of equations using two methods
% System:
% 5x + 3y - z = 10
% 3x + 2y + z = 4
% 4x - y + 3z = 12

A = [5 3 -1; 3 2 1; 4 -1 3];
b = [10; 4; 12];

% Method 1: Matrix left division
x_leftdiv = A\b;

% Method 2: Inverse matrix
x_inv = inv(A)*b;

disp('3(d) Solutions:');
disp('Using left division (A\b):');
disp(x_leftdiv);
disp('Using inverse (inv(A)*b):');
disp(x_inv);
disp('Justification: Both methods give same solution but left division is numerically more stable');

% 3(v) To create a 3x3 matrix where each element is the product of its row and column indices
% Initialize a 3x3 matrix
matrix = zeros(3);

% Fill the matrix with element = row_index * column_index
for row = 1:3
    for col = 1:3
        matrix(row, col) = row * col;
    end
end

% Display the matrix
disp('3x3 Matrix with elements as product of row and column indices:');
disp(matrix);
%% Alternate Method 
% 4. Create a 3x3 matrix in MATLAB such that each element is the product of its row and column index.
%    For example, A(i,j) = i*j.

A = zeros(3);  % Initialize 3x3 matrix
for i = 1:3
    for j = 1:3
        A(i,j) = i * j;  % Assign product of row and column indices
    end
end
disp('4. 3x3 Matrix with A(i,j) = i*j:');
disp(A);

%%-----------------Question 4: Find and Correct Mistakes in Given Code-----------------
% 4. Find the mistake in the following commands/codes, if any, and correct them:
%    (i) X[1,2] = 4
%    (ii) P = ones(1;3)
%    (iii) a = 5
%        b = 3
%        result = a + b;
%        disp('The result is: ', result);
%    (iv) x = 1:5;
%        y = x.^2;
%        plot(x, y);
%    (v) a = 1;
%        b = 2;
%        c = a*b;
%        print(c);
%    (vi) x = [1 3 5; 8 10 12];
%        plot(x);

% Corrected code:
disp('4. Corrected code snippets:');

% (i) MATLAB uses parentheses, not brackets, for indexing
X(1,2) = 4;  % Corrected

% (ii) ones() requires commas, not semicolons, for dimensions
P = ones(1,3);  % Corrected

% (iii) disp() concatenates strings with num2str()
result = 5 + 3;
disp(['The result is: ', num2str(result)]);  % Corrected

% (iv) No error - correctly plots y = x^2
x = 1:5;
y = x.^2;
plot(x, y);

% (v) print() is for figures; use disp() for values
c = 1 * 2;
disp(c);  % Corrected

% (vi) plot() requires x and y inputs separately
x = [1 3 5; 8 10 12];
plot(x(:,1), x(:,2));  % Corrected (plots first vs second column)


%%-----------------Question 5: Write MATLAB Code for Given Problems-----------------
% 5(i) Write a code to add numbers until 0 is entered, using a while loop.
total = 0;
while true
    num = input('Enter a number (0 to stop): ');
    if num == 0
        break;
    end
    total = total + num;
end
disp(['Sum: ', num2str(total)]);

% 5(ii) Find roots of quadratic equation ax^2 + bx + c = 0 with if statements.
a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');
D = b^2 - 4*a*c;
if D > 0
    root1 = (-b + sqrt(D))/(2*a);
    root2 = (-b - sqrt(D))/(2*a);
    disp(['Real roots: ', num2str(root1), ', ', num2str(root2)]);
elseif D == 0
    root = -b/(2*a);
    disp(['Repeated root: ', num2str(root)]);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-D)/(2*a);
    disp(['Complex roots: ', num2str(realPart), '±', num2str(imagPart), 'i']);
end

% 5(iii) Find the 100th prime number.
count = 0;
num = 1;
while count < 100
    num = num + 1;
    isPrime = true;
    for i = 2:sqrt(num)
        if mod(num, i) == 0
            isPrime = false;
            break;
        end
    end
    if isPrime
        count = count + 1;
    end
end
disp(['100th prime: ', num2str(num)]);

% 5(iv) Solve d^2y/dx^2 + 2dy/dx + 2y = 0 symbolically.
syms y(x);
ode = diff(y, x, 2) + 2*diff(y, x) + 2*y == 0;
cond = [y(0) == 1, subs(diff(y), x, 0) == 0];
ySol(x) = dsolve(ode, cond);
disp('Symbolic solution:');
pretty(ySol);

% 5(v) Solve d^2y/dt^2 + y = 0 using ode45.
fun = @(t, y) [y(2); -y(1)];  % Convert to system of 1st-order ODEs
[t, y] = ode45(fun, [0 5], [1 0]);  % t=0-5, y(0)=1, y'(0)=0
plot(t, y(:,1));
title('Solution of d^2y/dt^2 + y = 0');

% 5(vi) Find minimum value in an array of 100 numbers using a for loop.
arr = rand(1, 100);
minVal = arr(1);
for i = 2:100
    if arr(i) < minVal
        minVal = arr(i);
    end
end
disp(['Minimum value: ', num2str(minVal)]);