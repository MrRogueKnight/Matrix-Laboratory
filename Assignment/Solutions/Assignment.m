% Q1. In each case find the values of expression in Matlab and explain precisely the order in which calculation was performed:-
% Part (a)
a = -2^3 + 9;

% Part (b)
b = 2/3 * 3;

% Part (c)
c = 3 * (2/3);

% Part (d)
d = 3 * 4 - 5^2 * 2 - 3;

% Part (e)
e = (2 / 3^2) * (3 - 4^3)^2;

% Part (f)
f = 3 * (3 * 4 - 2 * 5^2 - 3);

% Display results
disp('Results:')
disp(['a = ', num2str(a)])
disp(['b = ', num2str(b)])
disp(['c = ', num2str(c)])
disp(['d = ', num2str(d)])
disp(['e = ', num2str(e)])
disp(['f = ', num2str(f)])
%----------------------------------------------------------------------------------------------------------------------

%Q2. Write in Matlab code:-
%(a) (2+6i) / (9i)*(1+i)
%(b) Find the absolute value and angle in Matlab of part (a).

% Part (a): (2 + 6i) / (9i) * (1 + i)
z = (2 + 6i) / (9i) * (1 + i);

% Part (b): Absolute value and angle of z
abs_z = abs(z);         % Absolute value of z
angle_z = angle(z);     % Angle of z in radians

% Display results
disp('Results:')
disp(['z = ', num2str(z)])        % Display the complex result
disp(['Absolute value of z = ', num2str(abs_z)])
disp(['Angle of z (radians) = ', num2str(angle_z)])
disp(['Angle of z (degrees) = ', num2str(rad2deg(angle_z))]) % Angle in degrees
%----------------------------------------------------------------------------------------------------------------------

%Q3. Given array A = [2, 4, 1; 6, 7, 2; 3, 5, 9] provide the commands needed to:- (a) Assign the first row of A to vector called x. 
%(b) Assign the last two row of A an array called y. (c) Compute the sum over the column of A. 

% Define the matrix A
A = [2, 4, 1; 6, 7, 2; 3, 5, 9];

% (a) Assign the first row of A to vector called x
x = A(1, :);

% (b) Assign the last two rows of A to an array called y
y = A(2:3, :);

% (c) Compute the sum over the columns of A
column_sums = sum(A);

% Display results
disp('Matrix A:');
disp(A);

disp('Vector x (first row of A):');
disp(x);

disp('Array y (last two rows of A):');
disp(y);

disp('Sum over columns of A:');
disp(column_sums);
%----------------------------------------------------------------------------------------------------------------------

%Q4. Let X = [3, 2, 6, 8]^T and Y = [4, 1, 3, 5]^T add X and Y then find sum of elements of resulting vector.

% Define vectors X and Y (transpose to make column vectors)
X = [3; 2; 6; 8];
Y = [4; 1; 3; 5];

% Add X and Y
T = X + Y;

% Find the sum of elements of T
sum_T = sum(T);

% Display results
disp('Vector X:');
disp(X);

disp('Vector Y:');
disp(Y);

disp('Resulting vector T (X + Y):');
disp(T);

disp('Sum of elements of T:');
disp(sum_T);
%----------------------------------------------------------------------------------------------------------------------

%Q5. Let A = [1, 2, 3, 4; 5, 6, 7, 8; 1, 1, 2, 3] then write in Matlab:-
%(a) To extract a sub-matrix B consisting of row 1 and 3, column 2 and 4.
%(b) Inter change row 1 and 3.
%(c) Find A(:). Explain what it does?
%(d) Delete 2nd column of A and delete 3rd row of A.
%(e) Remove the second column.
% Define the matrix A
A = [1, 2, 3, 4; 5, 6, 7, 8; 1, 1, 2, 3];

% Display original matrix A
disp('Original matrix A:');
disp(A);

% (a) Extract a sub-matrix B consisting of rows 1 and 3, columns 2 and 4
B = A([1, 3], [2, 4]);
disp('(a) Sub-matrix B (rows 1 and 3, columns 2 and 4):');
disp(B);

% (b) Interchange rows 1 and 3
A([1, 3], :) = A([3, 1], :);
disp('(b) Matrix A after interchanging rows 1 and 3:');
disp(A);

% (c) Find A(:)
A_column = A(:);
disp('(c) A(:) - A as a column vector:');
disp(A_column);

% (d) Delete 2nd column and 3rd row of A
A(:, 2) = []; % Delete 2nd column
A(3, :) = []; % Delete 3rd row
disp('(d) Matrix A after deleting 2nd column and 3rd row:');
disp(A);

% (e) Remove the second column (this step is redundant as it's already done in step d)
% But if we were to do it again:
% A(:, 2) = [];
% disp('(e) Matrix A after removing the second column (again):');
% disp(A);
%----------------------------------------------------------------------------------------------------------------------

%Q6. Suppose vectors a and b are defined as follows:
%a = [2, -1, 5, 0];
%b = [3, 2, -1, 4];
%a) c = a − b
%(b) c = +a − 3b
%(c) c = 2 ∗ a + a.^b
%(d) c = b./a.
%(e) c = b.a
%(f) c = 2 ∗ b/3. ∗ a
%(g) c = b ∗ 2. ∗ a

% Define vectors a and b
a = [2, -1, 5, 0];
b = [3, 2, -1, 4];

% Display original vectors
disp('Vector a:');
disp(a);
disp('Vector b:');
disp(b);

% (a) c = a - b
c = a - b;
disp('(a) c = a - b:');
disp(c);

% (b) c = +a - 3b
c = +a - 3*b;
disp('(b) c = +a - 3b:');
disp(c);

% (c) c = 2 * a + a.^b
c = 2 * a + a.^b;
disp('(c) c = 2 * a + a.^b:');
disp(c);

% (d) c = b./a
c = b./a;
disp('(d) c = b./a:');
disp(c);

% (e) c = b.*a (corrected from b.a which is not valid Octave syntax)
c = b.*a;
disp('(e) c = b.*a:');
disp(c);

% (f) c = 2 * b/3 .* a
c = 2 * b/3 .* a;
disp('(f) c = 2 * b/3 .* a:');
disp(c);

% (g) c = b * 2 .* a
c = b * 2 .* a;
disp('(g) c = b * 2 .* a:');
disp(c);
%----------------------------------------------------------------------------------------------------------------------

%Q7. Given a script for animating the Mexican hat problem.
%[x, y] = meshgrid (−8 : 0.5 : 8);
%r = sqrt( x.2 + y.2) + eps;
%z = sin(r)./r;
%mesh(z);
%type this into the editor, save it,and execute it.

% Create the meshgrid for x and y
[x, y] = meshgrid(-8:0.5:8);

% Calculate the radius r
r = sqrt(x.^2 + y.^2) + eps; % Add eps to avoid division by zero

% Define the Mexican hat function
z = sin(r) ./ r;

% Create a figure for animation
figure;
hold on;

% Animation parameters
nFrames = 100; % Number of frames for animation
zMax = max(z(:)); % Maximum value of z for normalization

for k = 1:nFrames
    % Update the surface by scaling z with a sine wave
    zScaled = z * abs(sin(2 * pi * k / nFrames));
    
    % Plot the surface
    mesh(x, y, zScaled);
    zlim([-zMax zMax]); % Keep z-axis limits consistent
    title('Mexican Hat Animation');
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    pause(0.05); % Control animation speed
    
    % Clear the figure for the next frame
    if k < nFrames
        clf;
    end
end

hold off;
%----------------------------------------------------------------------------------------------------------------------

%Q8. Try to avoid using unnecessary brackets in an expressions. Can you spot the errors in the following expression 
%t = (2(3 + 4)/(5 ∗ (6 + 1))^2
t = 2 * (3 + 4) / (5 * (6 + 1))^2;
%----------------------------------------------------------------------------------------------------------------------

%Q9. Use Matlab array operations to do the following :
%(a) Add 1 to each element of the vector[2, 3, −1].
%(b) Multiply each element of the vector [1, 4, 8] by 3.
%(c) Find the array product of the two vector [1, 2, 3] and [0, −1, 1].
%(d) square each element of the vector [2, 3, 1].

% Part (a): Add 1 to each element of the vector [2, 3, -1]
vector_a = [2, 3, -1];
result_a = vector_a + 1;

% Part (b): Multiply each element of the vector [1, 4, 8] by 3
vector_b = [1, 4, 8];
result_b = vector_b * 3;

% Part (c): Find the array product of the two vectors [1, 2, 3] and [0, -1, 1]
vector_c1 = [1, 2, 3];
vector_c2 = [0, -1, 1];
result_c = vector_c1 .* vector_c2; % Element-wise multiplication

% Part (d): Square each element of the vector [2, 3, 1]
vector_d = [2, 3, 1];
result_d = vector_d .^ 2; % Element-wise exponentiation

% Display results
disp('Results:');
disp(['(a) Result: ', mat2str(result_a)]);
disp(['(b) Result: ', mat2str(result_b)]);
disp(['(c) Result: ', mat2str(result_c)]);
disp(['(d) Result: ', mat2str(result_d)]);
%----------------------------------------------------------------------------------------------------------------------
%Problem 1: Create 3-by-3 matrix m, then copy the second and third rows of the matrix twice to create 4-by-3 matrix, then
%(a) Delete 2nd row.
%(b) Find sub-matrix of order 2-by-2.
%----------------------------------------------------------------------------------------------------------------------
%Steps: 
% Matrix Manipulation
% Create a 3-by-3 matrix, copy rows, and perform operations

% Step 1: Create a 3x3 matrix
m = [1, 2, 3; 4, 5, 6; 7, 8, 9];
% Display results
disp('Matrix m:');
disp(m);

% Step 2: Copy the second and third rows twice to create a 4x3 matrix
m_expanded = [m(2:3, :); m(2:3, :)];
% Display results
disp('Expanded Matrix m_expanded:');
disp(m_expanded);

% Step 3a: Delete the second row
m_modified = m_expanded;
m_modified(2, :) = [];
% Display results
disp('Matrix m_modified (after deleting 2nd row):');
disp(m_modified);

% Step 3b: Extract a 2x2 sub-matrix (e.g., top-left corner)
sub_matrix = m_modified(1:2, 1:2);
% Display results
disp('Sub-matrix sub_matrix:');
disp(sub_matrix);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 2: Create two matrix of order 3-by-3, add, subtract both matrices-
%(a) Find multiplication of the both matrix.
%(b) Find element-wise multiplication of both matrix and see the difference from above multiplication matrix.

%----------------------------------------------------------------------------------------------------------------------
% Steps:
%Matrix Addition, Subtraction, and Multiplication
% Create two 3x3 matrices and perform operations

% Step 1: Define matrices
A = [2, 4, 6; 8, 10, 12; 14, 16, 18];
B = [1, 3, 5; 7, 9, 11; 13, 15, 17];
% Display results
disp('Matrix A:');
disp(A);
disp('Matrix B:');
disp(B);

% Step 2: Add and subtract matrices
C_add = A + B;
disp('Matrix Addition C_add:');
disp(C_add);
C_sub = A - B;
disp('Matrix Subtraction C_sub:');
disp(C_sub);

% Step 3a: Matrix multiplication
C_mult = A * B;
disp('Matrix Multiplication C_mult:');
disp(C_mult);

% Step 3b: Element-wise multiplication
C_elem_mult = A .* B;
disp('Element-wise Multiplication C_elem_mult:');
disp(C_elem_mult);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 3: Given A = [2, 4, 1; 6, 7, 2; 3, 5, 9] and B = [7, 5, 6; 2, 0, 8; 5, 7, 1], find the left division and right division of the matrix

%----------------------------------------------------------------------------------------------------------------------
%Steps
%Matrix Division
% Perform left and right division for given matrices

A = [2, 4, 1; 6, 7, 2; 3, 5, 9];
B = [7, 5, 6; 2, 0, 8; 5, 7, 1];
% Display results
disp('Matrix A (for division):');
disp(A);
disp('Matrix B (for division):');
disp(B);

% Left division
C_left = A \ B;
disp('Left Division C_left:');
disp(C_left);

% Right division
C_right = A / B;
disp('Right Division C_right:');
disp(C_right);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 4: Let A = [10, 12, 23; 14, 8, 6; 27, 8, 9] then perform the scalar operations on the matrix A by scalar quantity b = 5.

%----------------------------------------------------------------------------------------------------------------------
%Steps:
%Scalar Operations
% Perform scalar operations on matrix A with scalar b

A = [10, 12, 23; 14, 8, 6; 27, 8, 9];
b = 5;
% Display results
disp('Matrix A:');
disp(A);
disp('Scalar b:');
disp(b);

% Scalar addition, subtraction, multiplication, division
A_add = A + b;
disp('Scalar Addition A_add:');
disp(A_add);
A_sub = A - b;
disp('Scalar Subtraction A_sub:');
disp(A_sub);
A_mult = A * b;
disp('Scalar Multiplication A_mult:');
disp(A_mult);
A_div = A / b;
disp('Scalar Division A_div:');
disp(A_div);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 5: Let A = [10, 12, 23; 14, 8, 6; 27, 8, 9] and B = [12, 31, 45; 8, 0, −9; 45, 2, 11], then find the horizontal concatenation and
%vertical concatenation of the given matrices.

%----------------------------------------------------------------------------------------------------------------------
%Steps: 
%Concatenation of Matrices
% Perform horizontal and vertical concatenation

A = [10, 12, 23; 14, 8, 6; 27, 8, 9];
B = [12, 31, 45; 8, 0, -9; 45, 2, 11];
% Display results
disp('Matrix A:');
disp(A);
disp('Matrix B:');
disp(B);

% Horizontal concatenation
H_concat = [A, B];
disp('Horizontal Concatenation H_concat:');
disp(H_concat);

% Vertical concatenation
V_concat = [A; B];
disp('Vertical Concatenation V_concat:');
disp(V_concat);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 6: Find the following matrices of the order 3-by-3 :
%(a) Identity matrix.
%(b) Zero Matrix.
%(c) Random number matrix and magic matrix 

%----------------------------------------------------------------------------------------------------------------------
%Steps
%Special Matrices
% Create identity, zero, random, and magic matrices

% Step 1: Identity matrix
I = eye(3);
disp('Identity Matrix I:');
disp(I);

% Step 2: Zero matrix
Z = zeros(3);
disp('Zero Matrix Z:');
disp(Z);

% Step 3: Random matrix
R = rand(3);
disp('Random Matrix R:');
disp(R);

% Step 4: Magic matrix
M = magic(3);
disp('Magic Matrix M:');
disp(M);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 7: Create a two dimensional array matrix say A then add a third dimension to A 

%----------------------------------------------------------------------------------------------------------------------
%Steps:
%Add Third Dimension
% Create a 2D matrix and add a third dimension

A = [1, 2; 3, 4];
A_3D = cat(3, A, A + 10);
disp('3D Matrix A_3D:');
disp(A_3D);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 8: Perform the relational operators to the given single value -
%(a) If a=3 and b = 4
%(b) If a= 10 and b=5

%----------------------------------------------------------------------------------------------------------------------
%Steps
%Relational Operators
% Perform relational operations for given values

% Case a: a = 3, b = 4
a = 3; b = 4;
rel_op1 = a < b;
disp('Relational Operation a < b:');
disp(rel_op1);
rel_op2 = a == b;
disp('Relational Operation a == b:');
disp(rel_op2);
rel_op3 = a >= b;
disp('Relational Operation a >= b:');
disp(rel_op3);

% Case b: a = 10, b = 5
a = 10; b = 5;
rel_op4 = a > b;
disp('Relational Operation a > b:');
disp(rel_op4);
rel_op5 = a ~= b;
disp('Relational Operation a ~= b:');
disp(rel_op5);
rel_op6 = a <= b;
disp('Relational Operation a <= b:');
disp(rel_op6);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 9: Perform the logical operators (AND,OR,NOT) to the given single value -
%(a) If a= 10 and b = 0
%(b) If a= 2 and b = 5.

%----------------------------------------------------------------------------------------------------------------------
%Steps:
%Logical Operators
% Perform logical operations for given values

% Case a: a = 10, b = 0
a = 10; b = 0;
log_op1 = a && b;
disp('Logical Operation a && b:');
disp(log_op1);
log_op2 = a || b;
disp('Logical Operation a || b:');
disp(log_op2);
log_op3 = ~a;
disp('Logical Operation ~a:');
disp(log_op3);

% Case b: a = 2, b = 5
a = 2; b = 5;
log_op4 = a && b;
disp('Logical Operation a && b:');
disp(log_op4);
log_op5 = a || b;
disp('Logical Operation a || b:');
disp(log_op5);
log_op6 = ~b;
disp('Logical Operation ~b:');
disp(log_op6);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 10: Perform the logical operator and relational operator to find the relation is ’TRUE’ or ’FALSE’-
%(a) 2+3==5 OR 3 >7.
%(b) 4+5 == 3 AND 4 == 4.
%(c) NOT 7 > 3 

%----------------------------------------------------------------------------------------------------------------------
%Steps
%Logical and Relational Combination
% Determine if relations are TRUE or FALSE

% Case a
res1 = (2 + 3 == 5) || (3 > 7);
disp('Logical Relation (2 + 3 == 5) || (3 > 7):');
disp(res1);

% Case b
res2 = (4 + 5 == 3) && (4 == 4);
disp('Logical Relation (4 + 5 == 3) && (4 == 4):');
disp(res2);

% Case c
res3 = ~(7 > 3);
disp('Logical Relation ~(7 > 3):');
disp(res3);
%----------------------------------------------------------------------------------------------------------------------

%% Problem 11: Define a vector of length 100 between the point 1 and 2, also find the computational time.

%----------------------------------------------------------------------------------------------------------------------
%Steps:
%Vector and Computational Time
% Define a vector and calculate computational time

% Step 1: Define vector of length 100
vec = linspace(1, 2, 100);
disp('Vector of length 100:');
disp(vec);

% Step 2: Calculate computational time
tic; % Start timer
for i = 1:100
    temp = vec(i) * 2; %#ok<NASGU>
end
t_comp = toc; % Stop timer
disp('Computational Time t_comp:');
disp(t_comp);
%----------------------------------------------------------------------------------------------------------------------
%----------------------------------------------------------------------------------------------------------------------
% Problem 1a
A1a = [31, 2, 3, 44];
B1a = [12, 20, 15, 74];
dot1a = dot(A1a, B1a);
disp('Problem 1a Dot product:');
disp(dot1a);
%----------------------------------------------------------------------------------------------------------------------
% Problem 1b
dot1b = sum(A1a .* B1a);
disp('Problem 1b Sum of products:');
disp(dot1b);
%----------------------------------------------------------------------------------------------------------------------
% Problem 2
A2 = [1,2,3; 2,4,6; 3,6,9];
detA2 = det(A2);
if detA2 == 0
    disp('Problem 2: Matrix is singular. No inverse exists.');
else
    invA2 = inv(A2);
    disp('Problem 2: Matrix is non-singular. Inverse:');
    disp(invA2);
end
%----------------------------------------------------------------------------------------------------------------------
% Problem 3
% First system (4 equations, 4 variables)
A3_1 = [1 1 1 1;
        2 3 1 5;
        -1 1 -5 3;
        3 1 7 -2];
B3_1 = [10; 31; -2; 18];
sol3_1 = A3_1 \ B3_1;
disp('Problem 3 First system solution:');
disp(sol3_1);

% Second system (4 equations, 3 variables)
A3_2 = [3 2 -1;
        2 3 1;
        -1 3 2;
        1 -1 -7];
B3_2 = [10; 31; -2; 18];
sol3_2 = A3_2 \ B3_2;
disp('Problem 3 Second system solution:');
disp(sol3_2);
%----------------------------------------------------------------------------------------------------------------------
% Problem 4
% First system
A4_1 = [3 2 5;
        2 3 -2;
        1 1 1;
        2 -4 -7];
B4_1 = [22; 8; 6; -27];
sol4_1 = A4_1 \ B4_1;
disp('Problem 4 First system solution:');
disp(sol4_1);

% Second system
A4_2 = [3 2 5;
        4 5 -2];
B4_2 = [22; 8];
sol4_2 = A4_2 \ B4_2;
disp('Problem 4 Second system solution:');
disp(sol4_2);
%----------------------------------------------------------------------------------------------------------------------
% Problem 5a
A5a = [12, 4; 3, -5];
B5a = [2, 12; 0, 0];
AB5a = A5a * B5a;
BA5a = B5a * A5a;
disp('Problem 5a A*B:');
disp(AB5a);
disp('Problem 5a B*A:');
disp(BA5a);
%----------------------------------------------------------------------------------------------------------------------
% Problem 5b
A5b = [1,2,3; 2,4,6];
B5b = [-2,4; 3,8; 12,2];
AB5b = A5b * B5b;
BA5b = B5b * A5b;
disp('Problem 5b A*B:');
disp(AB5b);
disp('Problem 5b B*A:');
disp(BA5b);
%----------------------------------------------------------------------------------------------------------------------
% Problem 6a
A6a = [-2, 1; 1, 1];
B6a = [3; 10];
sol6a_left = A6a \ B6a;
sol6a_inv = inv(A6a) * B6a;
disp('Problem 6a Left division:');
disp(sol6a_left);
disp('Problem 6a Inverse method:');
disp(sol6a_inv);
%----------------------------------------------------------------------------------------------------------------------
% Problem 6b (3x3 system)
A6b = [5,3,-1; 3,2,1; 4,-1,3];
B6b = [10; 4; 12];
sol6b_left = A6b \ B6b;
sol6b_inv = inv(A6b) * B6b;
disp('Problem 6b Left division:');
disp(sol6b_left);
disp('Problem 6b Inverse method:');
disp(sol6b_inv);
%----------------------------------------------------------------------------------------------------------------------
% Problem 6c (4x4 system)
A6c = [3,2,5,1;
        1,-3,7,1;
        2,2,-3,4;
        1,1,1,1];
B6c = [24; 12; 17; 0];
sol6c_left = A6c \ B6c;
sol6c_inv = inv(A6c) * B6c;
disp('Problem 6c Left division:');
disp(sol6c_left);
disp('Problem 6c Inverse method:');
disp(sol6c_inv);
%----------------------------------------------------------------------------------------------------------------------
% Problem 7 (Timing)
A7 = A6b;
B7 = B6b;
tic;
sol7_left = A7 \ B7;
time7_left = toc;
tic;
sol7_inv = inv(A7) * B7;
time7_inv = toc;
disp('Problem 7 Timing results:');
disp(['Left division time: ', num2str(time7_left)]);
disp(['Inverse method time: ', num2str(time7_inv)]);
%----------------------------------------------------------------------------------------------------------------------
% Problem 8
function FV = future_value(PV, I, n)
    FV = PV * (1 + I)^n;
end

FV = future_value(1000, 0.005, 120);
disp('Problem 8b Future value:');
disp(FV);
%----------------------------------------------------------------------------------------------------------------------
% Problem 9 
function temperature_conversions()
% Generates temperature conversion tables as specified.

  % (a) Fahrenheit to Kelvin
  fprintf('Fahrenheit to Kelvin Conversion Table (0°F to 200°F):\n');
  fprintf('--------------------------------------\n');
  fprintf('  Fahrenheit (°F)  |  Kelvin (K)  \n');
  fprintf('--------------------------------------\n');
  for TF = 0:10:200  % Increment by 10 for a reasonable table size
    TK = F_to_K(TF);
    fprintf('%14.2f  |  %10.2f\n', TF, TK);
  end
  fprintf('--------------------------------------\n\n');

  % (b) Celsius to Rankine (25 lines)
  fprintf('Celsius to Rankine Conversion Table (0°C to 100°C):\n');
  fprintf('--------------------------------------\n');
  fprintf('  Celsius (°C)  |  Rankine (°R)  \n');
  fprintf('--------------------------------------\n');
  TC_values = linspace(0, 100, 25); % Create 25 evenly spaced values
  for TC = TC_values
    TR = C_to_R(TC);
    fprintf('%12.2f  |  %12.2f\n', TC, TR);
  end
  fprintf('--------------------------------------\n\n');

  % (c) Celsius to Fahrenheit (0°C to 40°C, spacing of 5)
  fprintf('Celsius to Fahrenheit Conversion Table (0°C to 40°C):\n');
  fprintf('--------------------------------------\n');
  fprintf('  Celsius (°C)  |  Fahrenheit (°F)  \n');
  fprintf('--------------------------------------\n');
  for TC = 0:5:40 % Appropriate spacing chosen as 5
    TF = C_to_F(TC);
    fprintf('%12.2f  |  %14.2f\n', TC, TF);
  end
  fprintf('--------------------------------------\n');
end

% Subfunctions for conversions

function TK = F_to_K(TF)
  % Converts Fahrenheit to Kelvin.
  TC = (TF - 32) * 5/9;
  TK = TC + 273.15;
end

function TR = C_to_R(TC)
  % Converts Celsius to Rankine.
  TK = TC + 273.15;
  TR = 9/5 * TK;
end

function TF = C_to_F(TC)
  % Converts Celsius to Fahrenheit.
  TF = (9/5 * TC) + 32;
end

%----------------------------------------------------------------------------------------------------------------------
% Problem 10
function h = rocket_height(t)
    h = -4.9 * t.^2 + 100 * t + 250;
end

t_values = linspace(0, 20, 1000);
h_values = rocket_height(t_values);
[~, idx] = max(h_values);
t_max = t_values(idx);
disp('Problem 10b: Time when rocket starts to fall:');
disp(t_max);
%----------------------------------------------------------------------------------------------------------------------
% Problem 11
my_function = @(x) -x.^5 -5*x.^3 -3*x.^2 +3 + exp(x);
[x_min, f_min] = fminbnd(my_function, -3, 3);
disp('Problem 11 Minimum function value:');
disp(f_min);

% Define functions
function FV = future_value(PV, I, n)
    FV = PV * (1 + I)^n;
end

function temperature_conversions
    % Part a
    F = 0:200;
    K = arrayfun(@F_to_K, F);
    disp('Problem 9a: Fahrenheit to Kelvin Table (first 5 rows):');
    disp([F(1:5)', K(1:5)']);
    
    % Part b
    C = linspace(0, 100, 25);
    R = arrayfun(@C_to_R, C);
    disp('Problem 9b: Celsius to Rankine Table (first 5 rows):');
    disp([C(1:5)', R(1:5)']);
    
    % Part c
    C_c = 0;
    F_c = C_to_F(C_c);
    disp('Problem 9c: Celsius to Fahrenheit:');
    disp([C_c, F_c]);
end

function K = F_to_K(TF)
    TC = (TF - 32) * 5/9;
    K = TC + 273.15;
end

function TR = C_to_R(TC)
    TR = (TC + 273.15) * 9/5;
end

function TF = C_to_F(TC)
    TF = TC * 9/5 + 32;
end

function h = height(t)
    h = -4.9 * t.^2 + 100 * t + 250;
end
%----------------------------------------------------------------------------------------------------------------------
%----------------------------------------------------------------------------------------------------------------------
%% Question 1: Plot y = sin(x) with labels
x = 0:0.1*pi:2*pi;
y = sin(x);
figure;
plot(x, y);
title('Plot of y = sin(x)');
xlabel('x');
ylabel('y');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 2: Plot y1 = sin(x) and y2 = cos(x) with labels and legend
x = 0:0.1*pi:2*pi;
y1 = sin(x);
y2 = cos(x);
figure;
plot(x, y1, x, y2);
title('Plots of y1 = sin(x) and y2 = cos(x)');
xlabel('x');
ylabel('y');
legend('sin(x)', 'cos(x)');
axis([-1 2*pi+1 -1.5 1.5]);
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 3: Subdivided figure for tan(x) and sinh(x)
x = -1.5:0.1:1.5;
figure;
subplot(2,1,1);
plot(x, tan(x));
title('Plot of y = tan(x)');
xlabel('x');
ylabel('y');
grid on;

subplot(2,1,2);
plot(x, sinh(x));
title('Plot of y = sinh(x)');
xlabel('x');
ylabel('y');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 4: Using fplot for given functions
figure;
fplot(@(t) 5*t^2, [-10, 10]);
title('Plot of f(t) = 5t^2');
xlabel('t');
ylabel('f(t)');
grid on;

figure;
fplot(@(t) 5*(sin(t))^2 + t*(cos(t))^2, [-10, 10]);
title('Plot of f(t) = 5(sin(t))^2 + t(cos(t))^2');
xlabel('t');
ylabel('f(t)');
grid on;

figure;
fplot(@(t) sin(t) + log(t), [0.1, 10]);
title('Plot of f(t) = sin(t) + log(t)');
xlabel('t');
ylabel('f(t)');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 5: Various plots for x, y, z
x = 0:pi/100:20*pi;
y = x .* sin(x);
z = x .* cos(x);

figure;
plot(x, y);
title('Plot of x vs y');
xlabel('x');
ylabel('y');
grid on;

figure;
polarplot(x, y);
title('Polar Plot of x vs y');
grid on;

figure;
plot3(x, y, z);
title('3-D Line Plot of x, y, z');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

% Contour and Surface plot
[X, Y] = meshgrid(linspace(0, 20*pi, 200), linspace(min(y), max(y), 200));
Z = X .* sin(X) + X .* cos(X);

figure;
contour(X, Y, Z, 20);
title('Contour Plot of Z');
xlabel('x');
ylabel('y');
grid on;

figure;
surf(X, Y, Z);
hold on;
contour3(X, Y, Z, 20, 'k');
title('Combination Surface and Contour Plot of Z');
xlabel('x');
ylabel('y');
zlabel('Z');
hold off;
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 6: Mesh and Surface Plot of Z
x = -5:0.5:5;
y = -5:0.5:5;
[X, Y] = meshgrid(x, y);
Z = sin(sqrt(X.^2 + Y.^2));

figure;
mesh(X, Y, Z);
title('Mesh Plot of Z = sin(sqrt(X^2 + Y^2))');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

figure;
surf(X, Y, Z);
title('Surf Plot of Z = sin(sqrt(X^2 + Y^2))');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 7: Bar and Histogram for Grades
G = [68, 83, 61, 70, 75, 82, 57, 5, 76, 85, 62, 71, 96, 78, 76, 68, 72, 75, 83, 93];
G_sorted = sort(G);
figure;
bar(G_sorted);
title('Sorted Engineering Grades');
xlabel('Student (Index)');
ylabel('Grade');
grid on;

figure;
histogram(G, 10);
title('Histogram of Engineering Grades');
xlabel('Grade');
ylabel('Frequency');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 8: Mesh Plots for Given Functions
[X, Y] = meshgrid(1:0.1:5, 1:0.1:5);

Z1 = X .* exp(X .* 2 .* Y);
figure;
mesh(X, Y, Z1);
title('Mesh Plot of z = x e^{x 2y}');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

Z2 = log(X.^2 + Y.^2);
figure;
mesh(X, Y, Z2);
title('Mesh Plot of z = log(x^2 + y^2)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

Z3 = (Y .* X.^2) ./ (X.^2 + Y.^2);
figure;
mesh(X, Y, Z3);
title('Mesh Plot of z = (y * x^2) / (x^2 + y^2)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%----------------------------------------------------------------------------------------------------------------------
%% Question 1
% Given two vectors x and y
% x: 0 to 15π with spacing π/100
% y: 0 to 12 with spacing π/10

diary question1;
disp('--- Question 1 ---');

% Define vectors
x = 0:pi/100:15*pi;
y = 0:pi/10:12;

% Part (a) - Size, Bytes, and Class
size_x = size(x);
size_y = size(y);
bytes_x = whos('x').bytes;
bytes_y = whos('y').bytes;
class_x = class(x);
class_y = class(y);

% Display Results
disp('Size of x:'); disp(size_x);
disp('Size of y:'); disp(size_y);
disp('Bytes of x:'); disp(bytes_x);
disp('Bytes of y:'); disp(bytes_y);
disp('Class of x:'); disp(class_x);
disp('Class of y:'); disp(class_y);

% Part (b) - Save input and output using 'diary'
disp('Question 1 Results saved in output');
diary off;
type question1;
%----------------------------------------------------------------------------------------------------------------------
%% Question 2
% Vector x: 0 to 10π with spacing π/100
% y = π sin(x)

diary question2;
disp('--- Question 2 ---');

% Define vectors
x = 0:pi/100:10*pi;
y = pi * sin(x);

% Part (a) - Size, Bytes, and Class
size_x = size(x);
size_y = size(y);
bytes_x = whos('x').bytes;
bytes_y = whos('y').bytes;
class_x = class(x);
class_y = class(y);

% Display Results
disp('Size of x:'); disp(size_x);
disp('Size of y:'); disp(size_y);
disp('Bytes of x:'); disp(bytes_x);
disp('Bytes of y:'); disp(bytes_y);
disp('Class of x:'); disp(class_x);
disp('Class of y:'); disp(class_y);

% Part (b) - Save input and output using 'diary'
disp('Question 2 Results saved in output2');
diary off;
type question2;
%----------------------------------------------------------------------------------------------------------------------
%% Question 3
% y1 = 2 cos(x) and y2 = 5 sin(x)
% x: 0 to 2π with increments of 0.1π

disp('--- Question 3 ---');

% Define vectors
x = 0:0.1*pi:2*pi;
y1 = 2 * cos(x);
y2 = 5 * sin(x);

% Part (a) - Save workspace
save('x');

% Part (b) and (c) - Plot x vs y1 and x vs y2
load('x');
figure;
plot(x, y1, '-o');
xlabel('x'); ylabel('y1');
title('x vs y1');
grid on;

figure;
plot(x, y2, '-s');
xlabel('x'); ylabel('y2');
title('x vs y2');
grid on;

load('x');

figure;
plot(x, y1, '-o', 'Color', 'r', 'LineWidth', 2, 'MarkerFaceColor', 'r'); % Red line with circles
hold on;
plot(x, y2, '-s', 'Color', 'b', 'LineWidth', 2, 'MarkerFaceColor', 'b'); % Blue line with squares

% Add labels, title, legend, and grid
xlabel('x');
ylabel('y');
title('Combined Graph of x vs y1 and x vs y2');
legend('y1 = 2 cos(x)', 'y2 = 5 sin(x)');
grid on;
hold off;

%----------------------------------------------------------------------------------------------------------------------
%% Question 4
% y1 = 2x and y2 = 5 sin(x)
% x: 0 to π with increments of 0.1π

disp('--- Question 4 ---');

% Define vectors
x = 0:0.1*pi:pi;
y1 = 2 * x;
y2 = 5 * sin(x);

% Part (a) - Save workspace
save('workspace4.mat');

% Part (b) and (c) - Plot x vs y1 and x vs y2
load('workspace4.mat');
figure;
plot(x, y1, '-x');
xlabel('x'); ylabel('y1');
title('x vs y1');
grid on;

figure;
plot(x, y2, '-d');
xlabel('x'); ylabel('y2');
title('x vs y2');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 5
% Interpolation of y = sin(x)

disp('--- Question 5 ---');

% Define vectors
x = 0:pi/4:2*pi;
y = sin(x);
xq = 0:pi/16:2*pi;

% Part (a) - Linear Interpolation
yq_linear = interp1(x, y, xq);

% Part (b) - Plot Linear Interpolation
figure;
plot(x, y, 'o', xq, yq_linear, '-');
legend('Original', 'Linear Interpolation');
title('Linear Interpolation');
xlabel('x'); ylabel('y');
grid on;

% Part (c) - Spline Interpolation
yq_spline = spline(x, y, xq);
figure;
plot(x, y, 'o', xq, yq_spline, '-');
legend('Original', 'Spline Interpolation');
title('Spline Interpolation');
xlabel('x'); ylabel('y');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 6
% Interpolation with given vectors

disp('--- Question 6 ---');

% Define vectors
x = 1:9;
y = [0 1.41 2 1.41 0 -1.41 -2 -1.41 0];
xq = 1.5:8.5;

% Part (a) - Linear Interpolation
yq_linear = interp1(x, y, xq);

% Part (b) - Plot Linear Interpolation
figure;
plot(x, y, 'o', xq, yq_linear, '-');
legend('Original', 'Linear Interpolation');
title('Linear Interpolation');
xlabel('x'); ylabel('y');
grid on;

% Part (c) - Spline Interpolation
yq_spline = spline(x, y, xq);
figure;
plot(x, y, 'o', xq, yq_spline, '-');
legend('Original', 'Spline Interpolation');
title('Spline Interpolation');
xlabel('x'); ylabel('y');
grid on;

disp('--- All Questions Completed ---');
%----------------------------------------------------------------------------------------------------------------------
%Eigenvalues of a Matrix
% Define a square matrix A
A = [4, -2; 1, 1];

% Compute eigenvalues
eigenvalues = eig(A);

% Display the eigenvalues
disp('Eigenvalues of matrix A:');
disp(eigenvalues);
%----------------------------------------------------------------------------------------------------------------------
%Positive Definite Matrix
% Define a symmetric matrix
A = [4, 2; 2, 3];

% Method 1: Check eigenvalues
eigenvalues = eig(A);
is_positive_definite = all(eigenvalues > 0);

% Display result
disp('Eigenvalues of matrix A:');
disp(eigenvalues);
if is_positive_definite
    disp('Matrix A is positive definite.');
else
    disp('Matrix A is not positive definite.');
end

% Method 2: Cholesky decomposition
try
    chol(A);
    disp('Matrix A is positive definite (Cholesky test passed).');
catch
    disp('Matrix A is not positive definite (Cholesky test failed).');
end
%----------------------------------------------------------------------------------------------------------------------

%Eigenvectors
% Define a square matrix
A = [4, -2; 1, 1];

% Compute eigenvalues and eigenvectors
[V, D] = eig(A);

% Display results
disp('Eigenvectors of matrix A (columns of V):');
disp(V);
disp('Eigenvalues of matrix A (diagonal of D):');
disp(diag(D));
%----------------------------------------------------------------------------------------------------------------------

% Read Symmetric Matrices and Eigenvalues
%Positive Semi-Definite Matrices
% Check positive semi-definiteness
A = [2, -1; -1, 2];
eigenvalues = eig(A);
if all(eigenvalues >= 0)
    disp('Matrix A is positive semi-definite.');
else
    disp('Matrix A is not positive semi-definite.');
end
%----------------------------------------------------------------------------------------------------------------------

%Diagonalization
% Symmetric matrix example
A = [2, 1; 1, 3];

% Eigen decomposition
[V, D] = eig(A);

% Verify diagonalization
A_reconstructed = V * D * V';
disp('Reconstructed matrix A (should match original):');
disp(A_reconstructed);
%----------------------------------------------------------------------------------------------------------------------
% Check definiteness using eigenvalues
A = [4, 1; 1, 3];
eigenvalues = eig(A);

if all(eigenvalues > 0)
    disp('Matrix A is positive definite.');
elseif all(eigenvalues >= 0)
    disp('Matrix A is positive semi-definite.');
elseif all(eigenvalues < 0)
    disp('Matrix A is negative definite.');
elseif all(eigenvalues <= 0)
    disp('Matrix A is negative semi-definite.');
else
    disp('Matrix A is indefinite.');
end
%----------------------------------------------------------------------------------------------------------------------
% Define a square matrix
A = [2, 4; 3, 8];

% Check if the determinant is non-zero
if det(A) ~= 0
    % Calculate the inverse
    A_inv = inv(A);
    disp('Inverse of matrix A:');
    disp(A_inv);
else
    disp('Matrix A is singular and does not have an inverse.');
end
%----------------------------------------------------------------------------------------------------------------------

% Define a square matrix A
A = [2, 1; 5, 7];

% Define the identity matrix I of the same size
I = eye(size(A)); 

% Solve for the inverse using matrix division
A_inv = A \ I;

% Display the result
disp('Inverse of matrix A using matrix division:');
disp(A_inv);
%----------------------------------------------------------------------------------------------------------------------

%LU Decomposition:
% Define the matrix A and vector b
A = [4, 3; 6, 3];
b = [10; 12];
disp('Matrix A:');
disp(A);

disp('Matrix B:');
disp(b);

% Perform LU decomposition
[L, U, P] = lu(A); % P is the permutation matrix for numerical stability

% Display L, U, and P
disp('Lower triangular matrix L:');
disp(L);
disp('Upper triangular matrix U:');
disp(U);
disp('Permutation matrix P:');
disp(P);

% Solve the system A * x = b
% Step 1: Solve L * y = P * b using forward substitution
y = L \ (P * b);

% Step 2: Solve U * x = y using backward substitution
x = U \ y;

% Display the solution
disp('Solution vector x:');
disp(x);
%----------------------------------------------------------------------------------------------------------------------

%Doolittle's Method
% Define matrix A
A = [2, -1, 1; 3, 3, 9; 3, 3, 5];

% Initialize L and U
n = size(A, 1);
L = eye(n); % Unit lower triangular matrix
U = zeros(n); % Upper triangular matrix

% Perform Doolittle's decomposition
for i = 1:n
    for j = i:n
        % Compute U(i, j)
        U(i, j) = A(i, j) - sum(L(i, 1:i-1) .* U(1:i-1, j)');
    end
    for j = i+1:n
        % Compute L(j, i)
        L(j, i) = (A(j, i) - sum(L(j, 1:i-1) .* U(1:i-1, i)')) / U(i, i);
    end
end

% Display L and U
disp('Lower triangular matrix L:');
disp(L);
disp('Upper triangular matrix U:');
disp(U);
%----------------------------------------------------------------------------------------------------------------------

%Crout's Method
% Define matrix A
A = [2, -1, 1; 3, 3, 9; 3, 3, 5];

% Initialize L and U
n = size(A, 1);
L = zeros(n); % Lower triangular matrix
U = eye(n); % Unit upper triangular matrix

% Perform Crout's decomposition
for j = 1:n
    for i = j:n
        % Compute L(i, j)
        L(i, j) = A(i, j) - sum(L(i, 1:j-1) .* U(1:j-1, j)');
    end
    for i = j+1:n
        % Compute U(j, i)
        U(j, i) = (A(j, i) - sum(L(j, 1:j-1) .* U(1:j-1, i)')) / L(j, j);
    end
end

% Display L and U
disp('Lower triangular matrix L:');
disp(L);
disp('Upper triangular matrix U:');
disp(U);
%----------------------------------------------------------------------------------------------------------------------

%Solve a System of Equations Using Decomposed Matrices
% Define the right-hand side vector b
b = [1; 3; 5];

% Step 1: Solve L * y = b using forward substitution
y = zeros(n, 1);
for i = 1:n
    y(i) = (b(i) - sum(L(i, 1:i-1) .* y(1:i-1)')) / L(i, i);
end

% Step 2: Solve U * x = y using backward substitution
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (y(i) - sum(U(i, i+1:n) .* x(i+1:n)')) / U(i, i);
end

% Display the solution
disp('Solution vector x:');
disp(x);
%----------------------------------------------------------------------------------------------------------------------
