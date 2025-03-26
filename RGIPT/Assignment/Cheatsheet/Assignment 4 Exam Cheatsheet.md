
---

# 📌 **MATLAB Assignment 4 Exam Cheatsheet**  

## **1️⃣ Basic 2D Plotting (`plot`)**  
Plots a function by defining `x` and `y` values:  
```matlab
x = 0:0.1*pi:2*pi;  % x values from 0 to 2π with step size of 0.1π
y = sin(x);         % Compute y = sin(x)
plot(x, y);         % Create a 2D plot
title('Plot of y = sin(x)');
xlabel('x'); ylabel('y');
grid on;           % Add grid
```
✅ **Exam Tips:**  
- Use `xlabel`, `ylabel`, and `title` for clear labels.  
- Use `grid on` for better visualization.  

---

## **2️⃣ Plot Multiple Functions in One Graph**  
To plot `sin(x)` and `cos(x)` together:  
```matlab
x = 0:0.1*pi:2*pi;
y1 = sin(x);
y2 = cos(x);
plot(x, y1, x, y2); % Plot both in the same figure
legend('sin(x)', 'cos(x)'); % Add legend
axis([-1 2*pi+1 -1.5 1.5]); % Set axis limits
grid on;
```
✅ **Exam Tips:**  
- Use `legend()` to differentiate multiple plots.  
- Use `axis([xmin xmax ymin ymax])` to adjust axis limits.  

---

## **3️⃣ Subplots (Multiple Plots in One Figure)**  
```matlab
subplot(2,1,1); % 2 rows, 1 column, position 1
plot(x, tan(x));  
title('Plot of y = tan(x)');

subplot(2,1,2); % Position 2
plot(x, sinh(x));
title('Plot of y = sinh(x)');
```
✅ **Exam Tips:**  
- `subplot(m, n, p)`: Creates a grid of `m x n` and places plot in position `p`.  
- Useful when comparing multiple graphs in a single figure.  

---

## **4️⃣ Function Plotting (`fplot`)**  
Directly plots functions without defining `x` values manually.  
```matlab
fplot(@(t) 5*t^2, [-10, 10]); % Plots 5t² from -10 to 10
title('Plot of f(t) = 5t^2');
xlabel('t'); ylabel('f(t)');
grid on;
```
✅ **Exam Tips:**  
- Use `fplot()` for continuous functions instead of manually defining `x`.  
- Syntax: `fplot(@(variable) function, [xmin, xmax])`.  

---

## **5️⃣ 3D Plots (`plot3`, `mesh`, `surf`)**  
### **3D Line Plot (`plot3`)**
```matlab
x = 0:pi/100:20*pi;
y = x .* sin(x);
z = x .* cos(x);
plot3(x, y, z);
title('3D Plot of x, y, z');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;
```

### **Mesh and Surface Plots**
```matlab
[X, Y] = meshgrid(-5:0.5:5, -5:0.5:5);
Z = sin(sqrt(X.^2 + Y.^2));
mesh(X, Y, Z); % Wireframe plot
surf(X, Y, Z); % Solid surface plot
```
✅ **Exam Tips:**  
- `plot3(x, y, z)`: 3D trajectory.  
- `mesh(X, Y, Z)`: 3D wireframe.  
- `surf(X, Y, Z)`: 3D solid surface.  
- **Use `meshgrid()` to create X-Y matrices for 3D plots.**  

---

## **6️⃣ Polar Plots (`polarplot`)**  
Used for plotting in **polar coordinates** instead of Cartesian coordinates.  
```matlab
polarplot(x, y);
title('Polar Plot of x vs y');
grid on;
```
✅ **Exam Tips:**  
- `polarplot(theta, r)`: Plots `r` as a function of `θ` (angle).  

---

## **7️⃣ Contour Plots**  
Used to visualize **3D data in 2D**.  
```matlab
[X, Y] = meshgrid(linspace(0, 20*pi, 200), linspace(min(y), max(y), 200));
Z = X .* sin(X) + X .* cos(X);
contour(X, Y, Z, 20); % 20 contour levels
title('Contour Plot');
```
✅ **Exam Tips:**  
- `contour(X, Y, Z, levels)`: Creates contour lines.  
- `contour3(X, Y, Z, levels)`: 3D contour overlaid on a surface.  

---

## **8️⃣ Bar & Histogram Plots**  
### **Bar Plot (For Discrete Data)**
```matlab
bar(G_sorted);
title('Sorted Engineering Grades');
xlabel('Student (Index)');
ylabel('Grade');
grid on;
```
### **Histogram (For Grouped Data)**
```matlab
histogram(G, 10); % 10 bins
title('Histogram of Engineering Grades');
xlabel('Grade');
ylabel('Frequency');
grid on;
```
✅ **Exam Tips:**  
- **Use `bar()` for individual values, `histogram()` for frequency distributions.**  
- **Histograms group data into bins, bar charts display discrete values.**  

---

## **9️⃣ Mesh Plots for Complex Functions**  
```matlab
[X, Y] = meshgrid(1:0.1:5, 1:0.1:5);
Z1 = X .* exp(X .* 2 .* Y);
mesh(X, Y, Z1);
title('Mesh Plot of z = x e^{x 2y}');
```
✅ **Exam Tips:**  
- Use `mesh()` for wireframe, `surf()` for solid surfaces.  
- Know how to create **matrices using `meshgrid()`**.  

---

# 🚀 **Final Exam Tips & Summary**
### **MATLAB Basics**
✔ `plot(x, y)`: Basic 2D plotting.  
✔ `subplot(m, n, p)`: Multiple plots in one figure.  
✔ `legend()`: Used to label multiple curves in a single figure.  
✔ `grid on`: Adds a background grid for better visualization.  

### **Advanced Plotting**
✔ `fplot()`: Function plotting without defining discrete `x` values.  
✔ `plot3(x, y, z)`: 3D curve plots.  
✔ `mesh(X, Y, Z)`: 3D wireframe.  
✔ `surf(X, Y, Z)`: 3D solid surface.  
✔ `contour(X, Y, Z)`: 2D contour representation.  
✔ `polarplot()`: Used for polar coordinate graphs.  

### **Data Visualization**
✔ `bar()`: Bar charts for discrete data.  
✔ `histogram()`: Used for frequency distributions.  

### **Matrix Operations (for Mesh Plots)**
✔ `meshgrid(x, y)`: Creates a grid of `X, Y` coordinates for 3D plots.  
✔ `Z = f(X, Y)`: Define `Z` for surface/mesh plots.  

---

