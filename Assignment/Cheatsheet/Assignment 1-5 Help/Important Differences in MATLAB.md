
---

# **📌 Important Differences in MATLAB**
These differences will help you avoid errors and confusion in your exam.

---

## **1️⃣ `*` vs. `.*` (Matrix Multiplication vs. Element-wise Multiplication)**
| **Operation** | **Matrix Multiplication (`*`)** | **Element-wise Multiplication (`.*`)** |
|-------------|--------------------------------|--------------------------------|
| **Definition** | Used for multiplying matrices following linear algebra rules. | Multiplies each element of one matrix/vector with the corresponding element of another. |
| **Syntax** | `C = A * B;` | `C = A .* B;` |
| **Condition** | Number of columns in A must match rows in B. | Both matrices must have the **same size**. |
| **Example** | `A = [1 2; 3 4]; B = [5; 6]; C = A * B;` ✅ | `A = [1 2; 3 4]; B = [5 6; 7 8]; C = A .* B;` ✅ |
| **Error Example** | `A * B` ❌ (if dimensions don’t match) | `A .* B` ❌ (if sizes don’t match) |

✅ **Exam Tip:** Use `*` for **matrix multiplication** and `.*` for **element-wise multiplication**.

---

## **2️⃣ `/` vs. `.\` vs. `\` (Matrix Division vs. Element-wise Division)**
| **Operation** | **Matrix Right Division (`/`)** | **Matrix Left Division (`\`)** | **Element-wise Division (`./`)** |
|-------------|--------------------------------|--------------------------------|--------------------------------|
| **Definition** | Solves `A * X = B` → `X = B / A` | Solves `A * X = B` → `X = A \ B` | Divides each element of one matrix by corresponding element of another. |
| **Syntax** | `C = B / A;` | `C = A \ B;` | `C = A ./ B;` |
| **Condition** | A must be square (same rows & cols). | A must be square (same rows & cols). | A and B must have the **same size**. |
| **Example** | `C = [6 3; 4 8] / [1 2; 3 4];` | `C = [1 2; 3 4] \ [6 3; 4 8];` | `C = [6 3; 4 8] ./ [1 2; 3 4];` |

✅ **Exam Tip:** Use `\` for **solving linear equations**, `/` for **right division**, and `./` for **element-wise division**.

---

## **3️⃣ `^` vs. `.^` (Matrix Power vs. Element-wise Power)**
| **Operation** | **Matrix Power (`^`)** | **Element-wise Power (`.^`)** |
|-------------|---------------------------|-----------------------------|
| **Definition** | Raises a square matrix to a power using matrix multiplication rules. | Raises each element of a matrix to a power. |
| **Syntax** | `C = A^2;` | `C = A.^2;` |
| **Condition** | A must be square. | A can be any size. |
| **Example** | `A = [1 2; 3 4]; C = A^2;` | `A = [1 2; 3 4]; C = A.^2;` |
| **Error Example** | `A^2` ❌ (if A is not square) | `A.^2` ❌ (if sizes don’t match) |

✅ **Exam Tip:** Use `.^` for **element-wise exponentiation** and `^` for **matrix exponentiation**.

---

## **4️⃣ `sum()` vs. `cumsum()` vs. `cumprod()`**
| **Function** | **sum()** | **cumsum()** | **cumprod()** |
|-------------|-----------|-------------|-------------|
| **Definition** | Computes the total sum of all elements in a vector/matrix. | Computes the cumulative sum of elements. | Computes the cumulative product of elements. |
| **Syntax** | `S = sum(A);` | `S = cumsum(A);` | `S = cumprod(A);` |
| **Example** | `A = [1 2 3]; sum(A) → 6` | `A = [1 2 3]; cumsum(A) → [1 3 6]` | `A = [1 2 3]; cumprod(A) → [1 2 6]` |

✅ **Exam Tip:** `cumsum()` keeps adding numbers, while `cumprod()` keeps multiplying.

---

## **5️⃣ `zeros()`, `ones()`, `eye()`, and `rand()`**
| **Function** | **zeros()** | **ones()** | **eye()** | **rand()** |
|-------------|-------------|------------|------------|------------|
| **Definition** | Creates a matrix filled with zeros. | Creates a matrix filled with ones. | Creates an identity matrix. | Creates a matrix with random values. |
| **Syntax** | `Z = zeros(3,3);` | `O = ones(3,3);` | `I = eye(3);` | `R = rand(3,3);` |

✅ **Exam Tip:** Use `eye()` for identity matrices and `rand()` for random numbers.

---

## **6️⃣ `eig()` vs. `det()` vs. `inv()`**
| **Function** | **eig() (Eigenvalues & Eigenvectors)** | **det() (Determinant)** | **inv() (Matrix Inverse)** |
|-------------|---------------------------------|-----------------|----------------|
| **Definition** | Finds the eigenvalues and eigenvectors of a matrix. | Computes the determinant of a square matrix. | Computes the inverse of a square matrix. |
| **Syntax** | `[V, D] = eig(A);` | `D = det(A);` | `A_inv = inv(A);` |
| **Condition** | A must be square. | A must be square. | A must be square and non-singular (det(A) ≠ 0). |
| **Example** | `eig([2 1; 1 2])` → Eigenvalues | `det([1 2; 3 4])` → -2 | `inv([1 2; 3 4])` → `[-2 1; 1.5 -0.5]` |

✅ **Exam Tip:** If `det(A) == 0`, then `A` is singular and has **no inverse**.

---

## **7️⃣ `fprintf()` vs. `disp()`**
| **Function** | **disp()** | **fprintf()** |
|-------------|------------|--------------|
| **Definition** | Displays a message or value. | Displays formatted output. |
| **Syntax** | `disp('Hello');` | `fprintf('Value: %.2f\n', x);` |
| **Example Output** | `Hello` | `Value: 3.14` |

✅ **Exam Tip:** Use `fprintf()` for formatted output, especially for floating-point numbers.

---

## **🚀 Final Exam Tips**
✅ **Understand the difference between `*` and `.*`.**  
✅ **Use `A \ B` for solving equations instead of `inv(A) * B`.**  
✅ **For plotting multiple functions, use `hold on/off`.**  
✅ **Know when to use `interp1` vs. `spline`.**  
✅ **If `det(A) == 0`, the matrix has NO inverse.**  
✅ **Always check matrix dimensions before performing operations.**  

---

