
---

# **📜 MATLAB Exam Cheat Sheet**

## **1️⃣ Vector Creation**
- `x = start:step:end;` → Creates an evenly spaced vector.
- Example:
  ```matlab
  x = 0:pi/100:15*pi; % Vector from 0 to 15π with π/100 steps
  ```

## **2️⃣ Checking Variable Properties**
- **Size:** `size(x)`
- **Memory (Bytes):** `whos('x')`
- **Data Type:** `class(x)`

## **3️⃣ Saving & Loading Data**
- **Save a variable:** `save('filename.mat', 'x')`
- **Load a variable:** `load('filename.mat')`

## **4️⃣ Plotting Functions**
- **Basic Plot:** `plot(x, y, 'LineSpec')`
- **Customize Plot:**
  ```matlab
  plot(x, y, '-o', 'LineWidth', 2, 'Color', 'r'); % Red with circles
  xlabel('x'); ylabel('y');
  title('Graph Title');
  legend('Curve Label');
  grid on;
  ```
- **Multiple Plots:**  
  ```matlab
  hold on;
  plot(x, y1, '-r'); % Red line
  plot(x, y2, '-b'); % Blue line
  hold off;
  ```

## **5️⃣ Trigonometric Functions**
- **Sin & Cos:** `y = sin(x);`, `y = cos(x);`
- **Scaled Sine/Cosine:** `y = 5 * sin(x);`

## **6️⃣ Interpolation**
- **Linear Interpolation:**
  ```matlab
  yq = interp1(x, y, xq, 'linear');
  ```
- **Spline Interpolation:**
  ```matlab
  yq_spline = spline(x, y, xq);
  ```
- **Plot Interpolated Data:**
  ```matlab
  plot(x, y, 'o', xq, yq, '-');
  legend('Original', 'Interpolated');
  ```

## **7️⃣ Workspace Management**
- **Save Workspace:** `save('workspace.mat')`
- **Load Workspace:** `load('workspace.mat')`
- **Check Variables:** `who`, `whos`

## **8️⃣ Exam Tips**
✅ **Understand vector operations:** Element-wise vs. matrix operations (`.*` vs. `*`)  
✅ **Be comfortable with plotting:** Use different markers, colors, and grid settings  
✅ **Know how to debug:** `size()`, `class()`, `whos()` help troubleshoot errors  
✅ **Use `hold on` and `legend` for multiple plots**  
✅ **Remember interpolation techniques and when to use each**  

---
