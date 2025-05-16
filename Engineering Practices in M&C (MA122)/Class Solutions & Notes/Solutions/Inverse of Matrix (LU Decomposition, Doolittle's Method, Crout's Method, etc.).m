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
