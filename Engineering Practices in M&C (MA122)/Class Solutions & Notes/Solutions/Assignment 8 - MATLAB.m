%%
% Problem 1: Linear Regression
clc; clear;

% (i) Data input and linear regression
x = [1 2 3 4 5]';
y = [2.1 2.9 3.7 4.1 5.0]';

% Construct design matrix
X = [ones(size(x)), x];

% Solve normal equations
coefficients = (X'*X)\(X'*y);
a0 = coefficients(1);
a1 = coefficients(2);

% (ii) Calculate coefficient of determination
y_pred = a0 + a1*x; % Calculate predicted y-values
SS_res = sum((y - y_pred).^2); % Sum of squared residuals
SS_tot = sum((y - mean(y)).^2); % Total sum of squares
r2 = 1 - SS_res/SS_tot; % R-squared value

    % SS_res: How much your data differs from the fitted line

    % SS_tot: How much your data varies in general

    % R²: Measures how good the fit is (1 = perfect fit)

% (iii) Plot results
figure;
plot(x, y, 'bo', 'MarkerSize', 8, 'LineWidth', 1.5); hold on;
plot(x, y_pred, 'r-', 'LineWidth', 1.5);
xlabel('x'); ylabel('y');
title(sprintf('Linear Fit: y = %.2f + %.2fx (R² = %.4f)', a0, a1, r2));
legend('Data', 'Linear Fit', 'Location', 'northwest');
grid on;

% Display results
disp('Problem 1 Results:');
disp(['Coefficients: a0 = ', num2str(a0), ', a1 = ', num2str(a1)]);
disp(['Coefficient of determination (R²) = ', num2str(r2)]);


%%
clc
% Problem 2: Quadratic Regression
clc; clear;

% (i) Data input and quadratic regression
x = [0 1 2 3 4]';
y = [1.0 2.7 5.8 10.1 17.2]';

% Construct design matrix
X = [ones(size(x)), x, x.^2];

% Solve normal equations
coefficients = (X'*X)\(X'*y);
a0 = coefficients(1);
a1 = coefficients(2);
a2 = coefficients(3);

% (ii) Calculate Sy and Sy/x
y_pred = a0 + a1*x + a2*x.^2; % Predicted y-values
n = length(y); % Number of data points

% Sy = Standard deviation of y (data spread)
Sy = sqrt(sum((y - mean(y)).^2)/(n-1));

% Sy/x = Standard error (how far points are from curve)
Syx = sqrt(sum((y - y_pred).^2)/(n-3)); 

% (iii) Plot results
figure;
xx = linspace(min(x), max(x), 100);
yy = a0 + a1*xx + a2*xx.^2;
plot(x, y, 'bo', 'MarkerSize', 8, 'LineWidth', 1.5); hold on;
plot(xx, yy, 'r-', 'LineWidth', 1.5);
xlabel('x'); ylabel('y');
title(sprintf('Quadratic Fit: y = %.2f + %.2fx + %.2fx²', a0, a1, a2));
legend('Data', 'Quadratic Fit', 'Location', 'northwest');
grid on;

% Display results
disp('Problem 2 Results:');
disp(['Coefficients: a0 = ', num2str(a0), ', a1 = ', num2str(a1), ', a2 = ', num2str(a2)]);
disp(['Sy (Standard deviation of y) = ', num2str(Sy)]);
disp(['Sy/x (Standard error of estimate) = ', num2str(Syx)]);
disp(['Ratio Syx/Sy = ', num2str(Syx/Sy)]);