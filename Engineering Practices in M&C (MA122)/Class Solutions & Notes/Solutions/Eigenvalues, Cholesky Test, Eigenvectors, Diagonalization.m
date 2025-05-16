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

