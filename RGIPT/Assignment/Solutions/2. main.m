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