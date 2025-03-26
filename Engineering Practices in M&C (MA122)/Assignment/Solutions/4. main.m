%----------------------------------------------------------------------------------------------------------------------
%% Question 1: Plot y = sin(x) with labels
x = 0:0.1*pi:2*pi;
y = sin(x);
figure;
plot(x, y);
title('Plot of y = sin(x)');
xlabel('x');
ylabel('y');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 2: Plot y1 = sin(x) and y2 = cos(x) with labels and legend
x = 0:0.1*pi:2*pi;
y1 = sin(x);
y2 = cos(x);
figure;
plot(x, y1, x, y2);
title('Plots of y1 = sin(x) and y2 = cos(x)');
xlabel('x');
ylabel('y');
legend('sin(x)', 'cos(x)');
axis([-1 2*pi+1 -1.5 1.5]);
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 3: Subdivided figure for tan(x) and sinh(x)
x = -1.5:0.1:1.5;
figure;
subplot(2,1,1);
plot(x, tan(x));
title('Plot of y = tan(x)');
xlabel('x');
ylabel('y');
grid on;

subplot(2,1,2);
plot(x, sinh(x));
title('Plot of y = sinh(x)');
xlabel('x');
ylabel('y');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 4: Using fplot for given functions
figure;
fplot(@(t) 5*t^2, [-10, 10]);
title('Plot of f(t) = 5t^2');
xlabel('t');
ylabel('f(t)');
grid on;

figure;
fplot(@(t) 5*(sin(t))^2 + t*(cos(t))^2, [-10, 10]);
title('Plot of f(t) = 5(sin(t))^2 + t(cos(t))^2');
xlabel('t');
ylabel('f(t)');
grid on;

figure;
fplot(@(t) sin(t) + log(t), [0.1, 10]);
title('Plot of f(t) = sin(t) + log(t)');
xlabel('t');
ylabel('f(t)');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 5: Various plots for x, y, z
x = 0:pi/100:20*pi;
y = x .* sin(x);
z = x .* cos(x);

figure;
plot(x, y);
title('Plot of x vs y');
xlabel('x');
ylabel('y');
grid on;

figure;
polarplot(x, y);
title('Polar Plot of x vs y');
grid on;

figure;
plot3(x, y, z);
title('3-D Line Plot of x, y, z');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

% Contour and Surface plot
[X, Y] = meshgrid(linspace(0, 20*pi, 200), linspace(min(y), max(y), 200));
Z = X .* sin(X) + X .* cos(X);

figure;
contour(X, Y, Z, 20);
title('Contour Plot of Z');
xlabel('x');
ylabel('y');
grid on;

figure;
surf(X, Y, Z);
hold on;
contour3(X, Y, Z, 20, 'k');
title('Combination Surface and Contour Plot of Z');
xlabel('x');
ylabel('y');
zlabel('Z');
hold off;
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 6: Mesh and Surface Plot of Z
x = -5:0.5:5;
y = -5:0.5:5;
[X, Y] = meshgrid(x, y);
Z = sin(sqrt(X.^2 + Y.^2));

figure;
mesh(X, Y, Z);
title('Mesh Plot of Z = sin(sqrt(X^2 + Y^2))');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;

figure;
surf(X, Y, Z);
title('Surf Plot of Z = sin(sqrt(X^2 + Y^2))');
xlabel('X');
ylabel('Y');
zlabel('Z');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 7: Bar and Histogram for Grades
G = [68, 83, 61, 70, 75, 82, 57, 5, 76, 85, 62, 71, 96, 78, 76, 68, 72, 75, 83, 93];
G_sorted = sort(G);
figure;
bar(G_sorted);
title('Sorted Engineering Grades');
xlabel('Student (Index)');
ylabel('Grade');
grid on;

figure;
histogram(G, 10);
title('Histogram of Engineering Grades');
xlabel('Grade');
ylabel('Frequency');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 8: Mesh Plots for Given Functions
[X, Y] = meshgrid(1:0.1:5, 1:0.1:5);

Z1 = X .* exp(X .* 2 .* Y);
figure;
mesh(X, Y, Z1);
title('Mesh Plot of z = x e^{x 2y}');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

Z2 = log(X.^2 + Y.^2);
figure;
mesh(X, Y, Z2);
title('Mesh Plot of z = log(x^2 + y^2)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

Z3 = (Y .* X.^2) ./ (X.^2 + Y.^2);
figure;
mesh(X, Y, Z3);
title('Mesh Plot of z = (y * x^2) / (x^2 + y^2)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;
%----------------------------------------------------------------------------------------------------------------------