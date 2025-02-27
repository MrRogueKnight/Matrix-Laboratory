
---

# **📌 Extra MATLAB Concepts & Hidden Tricks**
These are **less common but useful** concepts that could give you an edge in your exam.

---

## **1️⃣ MATLAB Precedence (Order of Operations)**
Just like in mathematics, MATLAB follows a specific **order of operations**:  
1. **Parentheses**: `()`
2. **Exponentiation**: `.^, ^`
3. **Unary Operators**: `+ -`
4. **Multiplication & Division**: `.*, *, ./, /`
5. **Addition & Subtraction**: `+ -`
6. **Relational Operators**: `<, >, <=, >=, ==, ~=`
7. **Logical Operators**: `&, |, &&, ||`

✅ **Exam Tip:** **Always use parentheses `()`** to avoid confusion in complex expressions.

---

## **2️⃣ Preallocating Arrays (Faster Execution)**
If you're working with large loops, **preallocating arrays** improves speed.

**Bad Code (Slow Execution)** ❌  
```matlab
for i = 1:10000
    A(i) = i^2;  % MATLAB resizes A in each iteration (Slow)
end
```
**Good Code (Faster Execution)** ✅  
```matlab
A = zeros(1, 10000); % Preallocating memory
for i = 1:10000
    A(i) = i^2;
end
```
✅ **Exam Tip:** Always preallocate arrays (`zeros`, `ones`) before using them in loops.

---

## **3️⃣ Difference Between `for`, `while`, and `break`**
| **Loop Type** | **Description** | **Syntax Example** |
|-------------|--------------------------------|--------------------------------|
| **for** | Runs a loop a specific number of times. | `for i = 1:10, disp(i); end` |
| **while** | Runs until a condition is met. | `while i < 10, i = i+1; end` |
| **break** | Exits a loop immediately. | `if x > 10, break; end` |

✅ **Exam Tip:** Use **`while` for unknown iterations** and **`for` for fixed iterations**.

---

## **4️⃣ Finding Maximum & Minimum Values**
✔ **Maximum and Minimum of a Matrix:**  
```matlab
A = [3 7 5; 2 9 1; 8 4 6];
max_value = max(A(:)); % Finds the max value
min_value = min(A(:)); % Finds the min value
```
✔ **Find Location of Max/Min Elements:**  
```matlab
[row, col] = find(A == max_value);
```

✅ **Exam Tip:** `max(A)` returns the max of each **column**, `max(A, [], 2)` returns max of **each row**.

---

## **5️⃣ Logical Indexing (Powerful Trick!)**
Instead of using loops, **logical indexing** lets you filter data efficiently.

✔ **Find elements greater than a value:**  
```matlab
A = [3 7 5; 2 9 1; 8 4 6];
B = A(A > 5); % Returns [7 9 8 6]
```

✅ **Exam Tip:** Logical indexing is **faster than loops** for selecting elements.

---

## **6️⃣ Removing Duplicates & Sorting**
✔ **Removing Duplicates in a Vector:**  
```matlab
unique_values = unique([1 2 3 3 4 5 5]); % [1 2 3 4 5]
```
✔ **Sorting in Ascending/Descending Order:**  
```matlab
sorted_A = sort(A, 'ascend'); % Default
sorted_A = sort(A, 'descend'); % Descending
```

✅ **Exam Tip:** `unique()` removes duplicates, `sort()` arranges values.

---

## **7️⃣ Working with Strings**
✔ **Defining a String:**  
```matlab
str = "Hello, MATLAB"; % Double quotes (Newer versions)
str_old = 'Hello, MATLAB'; % Single quotes (Older versions)
```
✔ **Concatenating Strings:**  
```matlab
full_str = strcat("Hello", " ", "World");
```
✔ **Finding the Length of a String:**  
```matlab
len = length(str);
```

✅ **Exam Tip:** Strings are stored as **character arrays** in older MATLAB versions.

---

## **8️⃣ Functions vs. Scripts**
| **Feature** | **Script** | **Function** |
|------------|-----------|-------------|
| **Definition** | A file with a series of commands. | A reusable block of code with inputs & outputs. |
| **File Type** | `.m` file (no inputs) | `.m` file (has `function` keyword) |
| **Example** | `script.m` | `function out = myfunc(x, y)` |

✔ **Creating a Function in MATLAB:**  
```matlab
function result = addNumbers(a, b)
    result = a + b;
end
```
✅ **Exam Tip:** Use **functions** when you need reusability, **scripts** when running a single task.

---

## **9️⃣ Anonymous Functions (One-line Functions)**
✔ **Anonymous functions allow quick calculations**  
```matlab
f = @(x) x.^2 + 3*x + 5;
y = f(2); % Evaluates function at x = 2
```
✅ **Exam Tip:** Use anonymous functions for small computations instead of full function files.

---

## **🔟 `find()`, `any()`, and `all()`**
| **Function** | **Description** | **Example** |
|-------------|----------------|------------|
| **find()** | Finds indices of elements matching a condition. | `find(A > 5)` |
| **any()** | Checks if **at least one** element is true. | `any(A(:) > 5)` |
| **all()** | Checks if **all** elements are true. | `all(A(:) > 5)` |

✅ **Exam Tip:** `find()` gives positions, while `any()` and `all()` return TRUE/FALSE.

---

## **🚀 Final Hidden Exam Tricks**
✅ **Use `ctrl + enter` to run a single section in MATLAB.**  
✅ **Use `help function_name` to get MATLAB documentation instantly.**  
✅ **Know the difference between `sum()`, `cumsum()`, and `cumprod()`.**  
✅ **Always test your code using `disp()` or `fprintf()` to see intermediate results.**  
✅ **Use `debugging mode` (place breakpoints) to track errors faster.**  

---

## **📌 Summary of What You Must Remember**
| **Topic** | **Key Things to Know** |
|-------------|-----------------------|
| **Vector & Matrices** | Creating, Indexing, Transpose, Concatenation |
| **Operators** | `* vs .*`, `/ vs ./ vs \`, `^ vs .^` |
| **Plotting** | `plot()`, `subplot()`, `mesh()`, `surf()` |
| **Solving Equations** | `A \ B`, `inv(A)`, `eig(A)`, `det(A)` |
| **Loops & Conditions** | `for`, `while`, `if-else`, `switch` |
| **Special Functions** | `unique()`, `sort()`, `find()`, `any()`, `all()` |
| **String Handling** | `strcat()`, `length()`, `sprintf()` |
| **Speed Optimization** | Preallocation (`zeros, ones`), Logical Indexing |

---

