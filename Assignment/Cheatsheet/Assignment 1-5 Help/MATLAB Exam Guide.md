
---

# **📜 MATLAB Exam Guide (Complete)**
## **🔹 1. MATLAB Basics**
### **📌 Definition of MATLAB**
- MATLAB (MATrix LABoratory) is a high-level programming language designed for numerical computing, matrix manipulations, data visualization, and algorithm development.

### **📌 Basic Operations**
✔ **Assignment Operator:** `=`  
✔ **Comments:** `% Single-line`, `%% Section`, ` %{ Multiline %}`  
✔ **Suppress Output:** Add `;` at the end of a statement  
✔ **Display Output:** `disp(variable)`, `fprintf('Value: %.2f', var)`

✔ **Mathematical Constants:**  
| **Constant** | **Value** |
|-------------|----------|
| `pi` | 3.1416 |
| `exp(1)` | e (2.718) |
| `inf` | Infinity |
| `NaN` | Not a Number |

### **📌 Creating Vectors & Matrices**
✔ **Row Vector:** `x = [1 2 3];`  
✔ **Column Vector:** `y = [1; 2; 3];`  
✔ **Linearly Spaced Vector:** `linspace(start, end, n)`  
✔ **Matrix Definition:**  
```matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9]; % 3x3 matrix
```

✅ **Exam Tip:** `size(A)` and `whos A` help check matrix dimensions.

---

## **🔹 2. Arithmetic & Logical Operations**
### **📌 Basic Operators**
✔ **Element-wise vs Matrix Operations:**  
| **Operation** | **Element-wise (`.*`, `./`, `.^`)** | **Matrix (`*`, `/`, `^`)** |
|-------------|--------------------------------|----------------------|
| Multiplication | `A .* B` | `A * B` |
| Division | `A ./ B` | `A / B` |
| Power | `A .^ B` | `A ^ B` |

✔ **Logical Operators:**  
```matlab
a = 5; b = 3;
a > b  % TRUE
a == b % FALSE
a ~= b % TRUE
```
✔ **Logical AND, OR, NOT:**  
```matlab
x = (2 + 3 == 5) || (3 > 7); % TRUE  
y = (4 + 5 == 3) && (4 == 4); % FALSE  
```

✅ **Exam Tip:** `.*` is used for element-wise multiplication, `*` for matrix multiplication.

---

## **🔹 3. Plotting & Visualization**
### **📌 2D & 3D Plotting**
✔ **Basic 2D Plot:**  
```matlab
plot(x, sin(x)); 
xlabel('x'); ylabel('y'); 
title('Sine Function');
grid on;
```
✔ **Multiple Plots in One Graph:**  
```matlab
plot(x, sin(x), 'r', x, cos(x), 'b');  
legend('sin(x)', 'cos(x)');  
```
✔ **Subplots:**  
```matlab
subplot(2,1,1); plot(x, tan(x));  
subplot(2,1,2); plot(x, sinh(x));
```
✔ **3D Plotting:**  
```matlab
[X, Y] = meshgrid(-5:0.5:5, -5:0.5:5);
Z = sin(sqrt(X.^2 + Y.^2));
mesh(X, Y, Z);
surf(X, Y, Z);
```

### **📌 Interpolation**
✔ **Linear & Spline Interpolation:**  
```matlab
yq = interp1(x, y, xq, 'linear'); % Linear Interpolation  
yq_spline = spline(x, y, xq); % Spline Interpolation  
```

✅ **Exam Tip:** `fplot` is better for smooth function graphs than `plot`.

---

## **🔹 4. Matrix Manipulations**
### **📌 Key Matrix Functions**
✔ **Transpose of Matrix:** `A'`  
✔ **Extracting Sub-matrix:**  
```matlab
B = A([1,3], [2,4]); % Extract rows 1 & 3, columns 2 & 4
```
✔ **Delete Rows & Columns:**  
```matlab
A(:,2) = []; % Delete 2nd column  
A(3,:) = []; % Delete 3rd row  
```
✔ **Concatenation:**  
```matlab
H = [A, B]; % Horizontal  
V = [A; B]; % Vertical  
```

✅ **Exam Tip:** `A(:)` converts a matrix to a column vector.

---

## **🔹 5. Special Matrices**
✔ **Identity Matrix:** `eye(3)`  
✔ **Zero Matrix:** `zeros(3)`  
✔ **Random Matrix:** `rand(3)`  
✔ **Magic Square:** `magic(3)`  

✅ **Exam Tip:** `magic(n)` generates an \( n \times n \) matrix where rows, columns, and diagonals sum equally.

---

## **🔹 6. Solving Systems of Equations**
✔ **Using Left Division:**  
```matlab
A = [2, 3; 5, 7];
B = [10; 18];
X = A \ B; % Solves AX = B
```
✔ **Using Inverse Method:**  
```matlab
X = inv(A) * B; % Not recommended due to computational cost
```
✔ **LU Decomposition:**  
```matlab
[L, U, P] = lu(A);
```

✅ **Exam Tip:** `\` (left division) is more efficient than `inv(A)`.

---

## **🔹 7. Eigenvalues & Eigenvectors**
✔ **Finding Eigenvalues & Eigenvectors:**  
```matlab
[V, D] = eig(A); % V = Eigenvectors, D = Eigenvalues  
```
✔ **Check if Matrix is Positive Definite:**  
```matlab
is_positive = all(eig(A) > 0);
```

✅ **Exam Tip:** A positive definite matrix has all **positive** eigenvalues.

---

## **🔹 8. Matrix Factorization**
✔ **LU Decomposition:**  
```matlab
[L, U] = lu(A); % L = Lower, U = Upper
```
✔ **Cholesky Decomposition (for symmetric positive-definite matrices):**  
```matlab
L = chol(A, 'lower');  
```
✔ **QR Factorization:**  
```matlab
[Q, R] = qr(A);
```

✅ **Exam Tip:** Use LU decomposition for solving linear systems efficiently.

---

## **🔹 9. Determinants & Inverse**
✔ **Finding Determinant:**  
```matlab
det_A = det(A);
```
✔ **Checking If Matrix is Singular:**  
```matlab
if det(A) == 0
    disp('Singular Matrix - No Inverse');
end
```
✔ **Finding Inverse of Matrix:**  
```matlab
A_inv = inv(A);
```

✅ **Exam Tip:** A singular matrix **does not have an inverse**.

---

## **🔟 Logical & Relational Operators**
✔ **Relational Operators:** `<`, `>`, `==`, `~=`, `<=`, `>=`  
✔ **Logical Operators:**  
```matlab
a && b  % AND
a || b  % OR
~a      % NOT
```
✔ **Example:**  
```matlab
(2+3 == 5) || (3 > 7)  % TRUE
(4+5 == 3) && (4 == 4) % FALSE
```

✅ **Exam Tip:** Use parentheses `()` to avoid operator precedence mistakes.

---

## **🚀 Final Exam Tips**
✅ **Use `size()` and `whos()` to check matrix dimensions.**  
✅ **Understand the difference between `*` and `.*`.**  
✅ **For solving equations, use `A \ B` instead of `inv(A) * B`.**  
✅ **Use `hold on/off` for multiple plots.**  
✅ **Know when to use `interp1` vs. `spline` for interpolation.**  
✅ **Understand LU decomposition, eigenvalues, and matrix inversion.**  
✅ **Always check if a matrix is singular before attempting an inverse.**  

---
