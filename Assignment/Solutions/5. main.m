%----------------------------------------------------------------------------------------------------------------------
%% Question 1
% Given two vectors x and y
% x: 0 to 15π with spacing π/100
% y: 0 to 12 with spacing π/10

diary question1;
disp('--- Question 1 ---');

% Define vectors
x = 0:pi/100:15*pi;
y = 0:pi/10:12;

% Part (a) - Size, Bytes, and Class
size_x = size(x);
size_y = size(y);
bytes_x = whos('x').bytes;
bytes_y = whos('y').bytes;
class_x = class(x);
class_y = class(y);

% Display Results
disp('Size of x:'); disp(size_x);
disp('Size of y:'); disp(size_y);
disp('Bytes of x:'); disp(bytes_x);
disp('Bytes of y:'); disp(bytes_y);
disp('Class of x:'); disp(class_x);
disp('Class of y:'); disp(class_y);

% Part (b) - Save input and output using 'diary'
disp('Question 1 Results saved in output');
diary off;
type question1;
%----------------------------------------------------------------------------------------------------------------------
%% Question 2
% Vector x: 0 to 10π with spacing π/100
% y = π sin(x)

diary question2;
disp('--- Question 2 ---');

% Define vectors
x = 0:pi/100:10*pi;
y = pi * sin(x);

% Part (a) - Size, Bytes, and Class
size_x = size(x);
size_y = size(y);
bytes_x = whos('x').bytes;
bytes_y = whos('y').bytes;
class_x = class(x);
class_y = class(y);

% Display Results
disp('Size of x:'); disp(size_x);
disp('Size of y:'); disp(size_y);
disp('Bytes of x:'); disp(bytes_x);
disp('Bytes of y:'); disp(bytes_y);
disp('Class of x:'); disp(class_x);
disp('Class of y:'); disp(class_y);

% Part (b) - Save input and output using 'diary'
disp('Question 2 Results saved in output2');
diary off;
type question2;
%----------------------------------------------------------------------------------------------------------------------
%% Question 3
% y1 = 2 cos(x) and y2 = 5 sin(x)
% x: 0 to 2π with increments of 0.1π

disp('--- Question 3 ---');

% Define vectors
x = 0:0.1*pi:2*pi;
y1 = 2 * cos(x);
y2 = 5 * sin(x);

% Part (a) - Save workspace
save('x');

% Part (b) and (c) - Plot x vs y1 and x vs y2
load('x');
figure;
plot(x, y1, '-o');
xlabel('x'); ylabel('y1');
title('x vs y1');
grid on;

figure;
plot(x, y2, '-s');
xlabel('x'); ylabel('y2');
title('x vs y2');
grid on;

load('x');

figure;
plot(x, y1, '-o', 'Color', 'r', 'LineWidth', 2, 'MarkerFaceColor', 'r'); % Red line with circles
hold on;
plot(x, y2, '-s', 'Color', 'b', 'LineWidth', 2, 'MarkerFaceColor', 'b'); % Blue line with squares

% Add labels, title, legend, and grid
xlabel('x');
ylabel('y');
title('Combined Graph of x vs y1 and x vs y2');
legend('y1 = 2 cos(x)', 'y2 = 5 sin(x)');
grid on;
hold off;

%----------------------------------------------------------------------------------------------------------------------
%% Question 4
% y1 = 2x and y2 = 5 sin(x)
% x: 0 to π with increments of 0.1π

disp('--- Question 4 ---');

% Define vectors
x = 0:0.1*pi:pi;
y1 = 2 * x;
y2 = 5 * sin(x);

% Part (a) - Save workspace
save('workspace4.mat');

% Part (b) and (c) - Plot x vs y1 and x vs y2
load('workspace4.mat');
figure;
plot(x, y1, '-x');
xlabel('x'); ylabel('y1');
title('x vs y1');
grid on;

figure;
plot(x, y2, '-d');
xlabel('x'); ylabel('y2');
title('x vs y2');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 5
% Interpolation of y = sin(x)

disp('--- Question 5 ---');

% Define vectors
x = 0:pi/4:2*pi;
y = sin(x);
xq = 0:pi/16:2*pi;

% Part (a) - Linear Interpolation
yq_linear = interp1(x, y, xq);

% Part (b) - Plot Linear Interpolation
figure;
plot(x, y, 'o', xq, yq_linear, '-');
legend('Original', 'Linear Interpolation');
title('Linear Interpolation');
xlabel('x'); ylabel('y');
grid on;

% Part (c) - Spline Interpolation
yq_spline = spline(x, y, xq);
figure;
plot(x, y, 'o', xq, yq_spline, '-');
legend('Original', 'Spline Interpolation');
title('Spline Interpolation');
xlabel('x'); ylabel('y');
grid on;
%----------------------------------------------------------------------------------------------------------------------
%% Question 6
% Interpolation with given vectors

disp('--- Question 6 ---');

% Define vectors
x = 1:9;
y = [0 1.41 2 1.41 0 -1.41 -2 -1.41 0];
xq = 1.5:8.5;

% Part (a) - Linear Interpolation
yq_linear = interp1(x, y, xq);

% Part (b) - Plot Linear Interpolation
figure;
plot(x, y, 'o', xq, yq_linear, '-');
legend('Original', 'Linear Interpolation');
title('Linear Interpolation');
xlabel('x'); ylabel('y');
grid on;

% Part (c) - Spline Interpolation
yq_spline = spline(x, y, xq);
figure;
plot(x, y, 'o', xq, yq_spline, '-');
legend('Original', 'Spline Interpolation');
title('Spline Interpolation');
xlabel('x'); ylabel('y');
grid on;

disp('--- All Questions Completed ---');
%----------------------------------------------------------------------------------------------------------------------