% Problem 1: Single ODE using Euler Method

% Question:
% Consider the initial value problem:
% dy/dt = −2*t*y^2, y(t=0)=1
% dt/dy = −2*t*y^2, y(t=0)=1

% Write MATLAB code to compute y(10) using Euler method with Δt=0.2

% Problem 1: Solve dy/dt = -2ty^2, y(0)=1 using Euler method

% Parameters
dt = 0.2;          % Time step size
t_final = 10;      % Final time
y0 = 1;            % Initial condition

% Initialize arrays
t = 0:dt:t_final;  % Time vector from 0 to 10 with step dt
y = zeros(size(t)); % Solution array
y(1) = y0;         % Set initial condition

% Euler method iteration
for k = 1:length(t)-1
    % Compute derivative at current time
    dydt = -2 * t(k) * y(k)^2;
    
    % Update solution using Euler formula
    y(k+1) = y(k) + dt * dydt;
end

% Display final result
disp('Problem 1 Result:');
disp(['y(10) = ', num2str(y(end))]);

% Optional: Plot the solution
plot(t, y);
xlabel('Time t');
ylabel('Solution y(t)');
title('Solution of dy/dt = -2ty^2 using Euler Method');
grid on;

% Problem 2: System of ODEs using Euler Method

% Question:
% Consider the system:
% dy / dt = z
% dz / dt + 5 * t * z + (y+7) * sin⁡(t) = 0

% with initial conditions y(0)=5, z(0)=1.4
% Write MATLAB code to compute solutions at t=10 using Euler method with Δt=0.5

% Problem 2: Solve system of ODEs using Euler method

% Parameters
dt = 0.5;          % Time step size
t_final = 10;      % Final time
y0 = 5;            % Initial y
z0 = 1.4;          % Initial z

% Initialize arrays
t = 0:dt:t_final;  % Time vector
y = zeros(size(t)); % Solution y(t)
z = zeros(size(t)); % Solution z(t)
y(1) = y0;
z(1) = z0;

% Euler method iteration
for k = 1:length(t)-1
    % Compute derivatives
    dydt = z(k);
    dzdt = -5*t(k)*z(k) - (y(k)+7)*sin(t(k));
    
    % Update solutions
    y(k+1) = y(k) + dt * dydt;
    z(k+1) = z(k) + dt * dzdt;
end

% Display final results
disp('Problem 2 Results:');
disp(['y(10) = ', num2str(y(end))]);
disp(['z(10) = ', num2str(z(end))]);

% Optional: Plot solutions
subplot(2,1,1);
plot(t, y);
ylabel('y(t)');
title('Solutions using Euler Method');

subplot(2,1,2);
plot(t, z);
xlabel('Time t');
ylabel('z(t)');
grid on;