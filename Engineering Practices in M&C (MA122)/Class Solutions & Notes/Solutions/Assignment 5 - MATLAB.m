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
%%
%You can save output to a diary file without explicitly using disp by simply running the commands interactively 
%while diary is active. MATLAB automatically records all input commands and their displayed outputs in the diary file.
diary('output_log.txt');  % Start logging to a file
x = 0 : pi/100 : 15*pi;  % Define vector x
y = 0 : pi/10 : 12;      % Define vector y

size(x)                  % Displays size (auto-saved to diary)
whos x y                 % Displays variable info (auto-saved)
class(x)                 % Displays data type (auto-saved)
diary off;  % Stop logging
%%
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

% Define variables
x = 0:0.1*pi:pi;     % x from 0 to π in 0.1π increments
y1 = 2*cos(x);       % y1 = 2cos(x)
y2 = 5*sin(x);       % y2 = 5sin(x)

% Save workspace variables
save('trig_data.mat', 'x', 'y1', 'y2');

% Clear workspace (to demonstrate loading)
clear;

% Load variables
load('trig_data.mat');

% Script for Plotting x vs y1
% Load data
load('trig_data.mat');

% Create plot
figure;
plot(x, y1, 'b-', 'LineWidth', 2);
title('Plot of x vs y1 = 2cos(x)');
xlabel('x (0 to π)');
ylabel('y1');
grid on;

% Save plot
saveas(gcf, 'x_vs_y1.png');

% Script for Plotting x vs y2
% Load data
load('trig_data.mat');

% Create plot
figure;
plot(x, y2, 'r--', 'LineWidth', 2);
title('Plot of x vs y2 = 5sin(x)');
xlabel('x (0 to π)');
ylabel('y2');
grid on;

% Save plot
saveas(gcf, 'x_vs_y2.png');

%%
%  you can save workspace variables in MATLAB without explicitly specifying their names

% Method 1. Save Entire Workspace (All Variables)
% Define variables
x = 0:0.1*pi:pi;
y1 = 2*cos(x);
y2 = 5*sin(x);

% Save ALL workspace variables automatically
save('trig_data.mat');  % No variable names needed

% Method 2. Save Specific Variables Without Hardcoding Names (Programmatic Approach)
% Define variables
x = 0:0.1*pi:pi;
y1 = 2*cos(x);
y2 = 5*sin(x);

% Get list of variables you want to save (without hardcoding names)
vars_to_save = {'x', 'y1', 'y2'};  % Can be generated programmatically

% Save using variable list
save('trig_data.mat', vars_to_save{:});
%%

%----------------------------------------------------------------------------------------------------------------------
%% Question 4
% Given y1 = 2cos(x) and y2 = 5 sin(x). Let x vary from 0 to π in increments of 0.1π.
% (a) Save and load workspace variables.
% (b) Create new script, load the data saved in the workspace and plot x versus y1.
% (c) Create new script, load the data saved in the workspace and plot x versus y2
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
% Create a vector x of values from 0 to 2π, with a spacing of π/ 4 
% Define vector y as y = sin(x)
% Next, define a new vector, xq of values from 0 to 2π, with a spacing of π/16
%(a) Find the yq values corresponding to the xq values by linear interpolation.
%(b) On the same figure, plot the original y vs. x as circles, and yq vs. xq as a line.
%(c) Repeat the exercise in part (a) and (b) using the spline(...) function to interpolate.
% Interpolation of y = sin(x)

disp('--- Question 5 ---');

% Define vectors
x = 0:pi/4:2*pi;
y = sin(x);

xq = 0:pi/16:2*pi; % Create query points for interpolation 
% Finer spacing of π/16

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

%%
% Alternative 
% Create the original vectors
x = 0:pi/4:2*pi;       % Original x values with spacing π/4
y = sin(x);            % Original y values

% Create query points for interpolation
xq = 0:pi/16:2*pi;     % Finer spacing of π/16

%% Part (a): Linear interpolation
yq_linear = interp1(x, y, xq, 'linear');

%% Part (b): Plotting
figure;
plot(x, y, 'o', 'MarkerSize', 8, 'DisplayName', 'Original data');  % Original data as circles
hold on;
plot(xq, yq_linear, '-', 'DisplayName', 'Linear interpolation');   % Interpolated data as line
hold off;
title('Linear Interpolation of sin(x)');
xlabel('x');
ylabel('sin(x)');
legend('show');
grid on;

%% Part (c): Spline interpolation
yq_spline = spline(x, y, xq);

% Plot both original and spline interpolation
figure;
plot(x, y, 'o', 'MarkerSize', 8, 'DisplayName', 'Original data');  % Original data as circles
hold on;
plot(xq, yq_spline, '-', 'DisplayName', 'Spline interpolation');   % Interpolated data as line
hold off;
title('Spline Interpolation of sin(x)');
xlabel('x');
ylabel('sin(x)');
legend('show');
grid on;
%%
% Example (Without hold on)

plot(x, y, 'o');       % Plots y vs. x as circles
plot(xq, yq, '-');     % ERASES the first plot and replaces it with yq vs. xq

% Result: Only the second plot (yq vs. xq) appears.

% Example (With hold on):

plot(x, y, 'o');       % Plots original data as circles
hold on;               % Retains the first plot
plot(xq, yq, '-');     % Adds interpolated curve as a line
hold off;              % Releases the hold (optional, but good practice)

% Result: Both plots appear together (original data as circles + interpolated line).

%  hold off Example (Proper Usage):

figure;                % Creates a new figure
plot(x, y, 'o');       % Plot 1: Original data
hold on;               % Enable overlay
plot(xq, yq, '-');     % Plot 2: Interpolated data
hold off;              % Disable overlay (next plot will clear the figure)
plot(x, y.^2, 'x');    % Plot 3: Replaces everything (since hold is off)

% Command	      Effect
% hold on	->    New plots are added to the current figure (no clearing).
% hold off	->    New plots clear the figure (default behavior).
% hold all	->    (Deprecated) Same as hold on, but also cycles colors automatically.
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