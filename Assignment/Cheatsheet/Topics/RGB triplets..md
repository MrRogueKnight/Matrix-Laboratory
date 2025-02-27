In MATLAB, you can specify **colors** using either **short color codes, RGB triplets, or color names**.  

---

### **1. Short Color Codes**
MATLAB provides **single-letter color codes**:

| Code | Color     |
|------|----------|
| `'r'` | Red      |
| `'g'` | Green    |
| `'b'` | Blue     |
| `'c'` | Cyan     |
| `'m'` | Magenta  |
| `'y'` | Yellow   |
| `'k'` | Black    |
| `'w'` | White    |

---

### **2. RGB Triplets**
You can define custom colors using **RGB values** (where each value is between 0 and 1):

| Color         | RGB Triplet |
|--------------|------------|
| Red          | `[1, 0, 0]` |
| Green        | `[0, 1, 0]` |
| Blue         | `[0, 0, 1]` |
| Yellow       | `[1, 1, 0]` |
| Cyan         | `[0, 1, 1]` |
| Magenta      | `[1, 0, 1]` |
| Black        | `[0, 0, 0]` |
| White        | `[1, 1, 1]` |
| Gray         | `[0.5, 0.5, 0.5]` |
| Orange       | `[1, 0.5, 0]` |
| Purple       | `[0.5, 0, 0.5]` |

---

### **3. Color Names (MATLAB R2019b and later)**
You can also use **full color names** as strings:

```matlab
plot(x, y, 'Color', 'red');   % Same as 'r'
plot(x, y, 'Color', 'blue');  % Same as 'b'
plot(x, y, 'Color', 'orange');% Custom color
```

---

### **Example: Using Different Colors**
```matlab
x = 0:0.1:10;
y1 = sin(x);
y2 = cos(x);

figure;
plot(x, y1, '-o', 'Color', [1, 0, 0], 'LineWidth', 2); % Custom Red
hold on;
plot(x, y2, '-s', 'Color', 'cyan', 'MarkerFaceColor', 'yellow', 'LineWidth', 2); % Cyan with Yellow squares
hold off;

title('Sin and Cos Functions with Custom Colors');
xlabel('x');
ylabel('y');
grid on;
legend('sin(x)', 'cos(x)');
```

---

