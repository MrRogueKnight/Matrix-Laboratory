In MATLAB, you can use the following predefined **marker symbols** in the `plot` function:

| Marker Symbol | Description |
|--------------|------------|
| `'o'` | Circle |
| `'+'` | Plus sign |
| `'*'` | Asterisk |
| `'.'` | Point |
| `'x'` | Cross |
| `'s'` | Square |
| `'d'` | Diamond |
| `'^'` | Upward triangle |
| `'v'` | Downward triangle |
| `'>'` | Rightward triangle |
| `'<'` | Leftward triangle |
| `'p'` | Pentagon |
| `'h'` | Hexagon |

---

### **Example: Using Different Markers in a Plot**
```matlab
% Define x values from -1.5 to 1.5 with an increment of 0.1
x = -1.5:0.1:1.5;
y1 = tan(x); % Compute y1 = tan(x)

% Create a plot with custom markers
plot(x, y1, '-s', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'LineWidth', 2);
title('y = tan(x) with square markers');
xlabel('x');
ylabel('y');
grid on;
```

---

### **Explanation:**
- `'-s'` → Solid line (`-`) with **square (`s`) markers**.
- `'MarkerSize', 8` → Increases the **marker size**.
- `'MarkerFaceColor', 'r'` → Fills markers with **red**.
- `'LineWidth', 2` → Thickens the **plot line**.
