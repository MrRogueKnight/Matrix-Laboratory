%----------------------------------------------------------------------------------------------------------------------
% Problem 1a
A1a = [31, 2, 3, 44];
B1a = [12, 20, 15, 74];
dot1a = dot(A1a, B1a);
disp('Problem 1a Dot product:');
disp(dot1a);
%----------------------------------------------------------------------------------------------------------------------
% Problem 1b
dot1b = sum(A1a .* B1a);
disp('Problem 1b Sum of products:');
disp(dot1b);
%----------------------------------------------------------------------------------------------------------------------
% Problem 2
A2 = [1,2,3; 2,4,6; 3,6,9];
detA2 = det(A2);
if detA2 == 0
    disp('Problem 2: Matrix is singular. No inverse exists.');
else
    invA2 = inv(A2);
    disp('Problem 2: Matrix is non-singular. Inverse:');
    disp(invA2);
end
%----------------------------------------------------------------------------------------------------------------------
% Problem 3
% First system (4 equations, 4 variables)
A3_1 = [1 1 1 1;
        2 3 1 5;
        -1 1 -5 3;
        3 1 7 -2];
B3_1 = [10; 31; -2; 18];
sol3_1 = A3_1 \ B3_1;
disp('Problem 3 First system solution:');
disp(sol3_1);

% Second system (4 equations, 3 variables)
A3_2 = [3 2 -1;
        2 3 1;
        -1 3 2;
        1 -1 -7];
B3_2 = [10; 31; -2; 18];
sol3_2 = A3_2 \ B3_2;
disp('Problem 3 Second system solution:');
disp(sol3_2);
%----------------------------------------------------------------------------------------------------------------------
% Problem 4
% First system
A4_1 = [3 2 5;
        2 3 -2;
        1 1 1;
        2 -4 -7];
B4_1 = [22; 8; 6; -27];
sol4_1 = A4_1 \ B4_1;
disp('Problem 4 First system solution:');
disp(sol4_1);

% Second system
A4_2 = [3 2 5;
        4 5 -2];
B4_2 = [22; 8];
sol4_2 = A4_2 \ B4_2;
disp('Problem 4 Second system solution:');
disp(sol4_2);
%----------------------------------------------------------------------------------------------------------------------
% Problem 5a
A5a = [12, 4; 3, -5];
B5a = [2, 12; 0, 0];
AB5a = A5a * B5a;
BA5a = B5a * A5a;
disp('Problem 5a A*B:');
disp(AB5a);
disp('Problem 5a B*A:');
disp(BA5a);
%----------------------------------------------------------------------------------------------------------------------
% Problem 5b
A5b = [1,2,3; 2,4,6];
B5b = [-2,4; 3,8; 12,2];
AB5b = A5b * B5b;
BA5b = B5b * A5b;
disp('Problem 5b A*B:');
disp(AB5b);
disp('Problem 5b B*A:');
disp(BA5b);
%----------------------------------------------------------------------------------------------------------------------
% Problem 6a
A6a = [-2, 1; 1, 1];
B6a = [3; 10];
sol6a_left = A6a \ B6a;
sol6a_inv = inv(A6a) * B6a;
disp('Problem 6a Left division:');
disp(sol6a_left);
disp('Problem 6a Inverse method:');
disp(sol6a_inv);
%----------------------------------------------------------------------------------------------------------------------
% Problem 6b (3x3 system)
A6b = [5,3,-1; 3,2,1; 4,-1,3];
B6b = [10; 4; 12];
sol6b_left = A6b \ B6b;
sol6b_inv = inv(A6b) * B6b;
disp('Problem 6b Left division:');
disp(sol6b_left);
disp('Problem 6b Inverse method:');
disp(sol6b_inv);
%----------------------------------------------------------------------------------------------------------------------
% Problem 6c (4x4 system)
A6c = [3,2,5,1;
        1,-3,7,1;
        2,2,-3,4;
        1,1,1,1];
B6c = [24; 12; 17; 0];
sol6c_left = A6c \ B6c;
sol6c_inv = inv(A6c) * B6c;
disp('Problem 6c Left division:');
disp(sol6c_left);
disp('Problem 6c Inverse method:');
disp(sol6c_inv);
%----------------------------------------------------------------------------------------------------------------------
% Problem 7 (Timing)
A7 = A6b;
B7 = B6b;
tic;
sol7_left = A7 \ B7;
time7_left = toc;
tic;
sol7_inv = inv(A7) * B7;
time7_inv = toc;
disp('Problem 7 Timing results:');
disp(['Left division time: ', num2str(time7_left)]);
disp(['Inverse method time: ', num2str(time7_inv)]);
%----------------------------------------------------------------------------------------------------------------------
% Problem 8
function FV = future_value(PV, I, n)
    FV = PV * (1 + I)^n;
end

FV = future_value(1000, 0.005, 120);
disp('Problem 8b Future value:');
disp(FV);
%----------------------------------------------------------------------------------------------------------------------
% Problem 9 
function temperature_conversions()
% Generates temperature conversion tables as specified.

  % (a) Fahrenheit to Kelvin
  fprintf('Fahrenheit to Kelvin Conversion Table (0°F to 200°F):\n');
  fprintf('--------------------------------------\n');
  fprintf('  Fahrenheit (°F)  |  Kelvin (K)  \n');
  fprintf('--------------------------------------\n');
  for TF = 0:10:200  % Increment by 10 for a reasonable table size
    TK = F_to_K(TF);
    fprintf('%14.2f  |  %10.2f\n', TF, TK);
  end
  fprintf('--------------------------------------\n\n');

  % (b) Celsius to Rankine (25 lines)
  fprintf('Celsius to Rankine Conversion Table (0°C to 100°C):\n');
  fprintf('--------------------------------------\n');
  fprintf('  Celsius (°C)  |  Rankine (°R)  \n');
  fprintf('--------------------------------------\n');
  TC_values = linspace(0, 100, 25); % Create 25 evenly spaced values
  for TC = TC_values
    TR = C_to_R(TC);
    fprintf('%12.2f  |  %12.2f\n', TC, TR);
  end
  fprintf('--------------------------------------\n\n');

  % (c) Celsius to Fahrenheit (0°C to 40°C, spacing of 5)
  fprintf('Celsius to Fahrenheit Conversion Table (0°C to 40°C):\n');
  fprintf('--------------------------------------\n');
  fprintf('  Celsius (°C)  |  Fahrenheit (°F)  \n');
  fprintf('--------------------------------------\n');
  for TC = 0:5:40 % Appropriate spacing chosen as 5
    TF = C_to_F(TC);
    fprintf('%12.2f  |  %14.2f\n', TC, TF);
  end
  fprintf('--------------------------------------\n');
end

% Subfunctions for conversions

function TK = F_to_K(TF)
  % Converts Fahrenheit to Kelvin.
  TC = (TF - 32) * 5/9;
  TK = TC + 273.15;
end

function TR = C_to_R(TC)
  % Converts Celsius to Rankine.
  TK = TC + 273.15;
  TR = 9/5 * TK;
end

function TF = C_to_F(TC)
  % Converts Celsius to Fahrenheit.
  TF = (9/5 * TC) + 32;
end

%----------------------------------------------------------------------------------------------------------------------
% Problem 10
function h = rocket_height(t)
    h = -4.9 * t.^2 + 100 * t + 250;
end

t_values = linspace(0, 20, 1000);
h_values = rocket_height(t_values);
[~, idx] = max(h_values);
t_max = t_values(idx);
disp('Problem 10b: Time when rocket starts to fall:');
disp(t_max);
%----------------------------------------------------------------------------------------------------------------------
% Problem 11
my_function = @(x) -x.^5 -5*x.^3 -3*x.^2 +3 + exp(x);
[x_min, f_min] = fminbnd(my_function, -3, 3);
disp('Problem 11 Minimum function value:');
disp(f_min);

% Define functions
function FV = future_value(PV, I, n)
    FV = PV * (1 + I)^n;
end

function temperature_conversions
    % Part a
    F = 0:200;
    K = arrayfun(@F_to_K, F);
    disp('Problem 9a: Fahrenheit to Kelvin Table (first 5 rows):');
    disp([F(1:5)', K(1:5)']);
    
    % Part b
    C = linspace(0, 100, 25);
    R = arrayfun(@C_to_R, C);
    disp('Problem 9b: Celsius to Rankine Table (first 5 rows):');
    disp([C(1:5)', R(1:5)']);
    
    % Part c
    C_c = 0;
    F_c = C_to_F(C_c);
    disp('Problem 9c: Celsius to Fahrenheit:');
    disp([C_c, F_c]);
end

function K = F_to_K(TF)
    TC = (TF - 32) * 5/9;
    K = TC + 273.15;
end

function TR = C_to_R(TC)
    TR = (TC + 273.15) * 9/5;
end

function TF = C_to_F(TC)
    TF = TC * 9/5 + 32;
end

function h = height(t)
    h = -4.9 * t.^2 + 100 * t + 250;
end
%----------------------------------------------------------------------------------------------------------------------