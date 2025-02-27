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