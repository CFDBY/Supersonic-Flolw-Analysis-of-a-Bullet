clc;
clear;
close all;

% === Constants ===
gamma = 1.4;              % Specific heat ratio for air
R = 287;                  % Gas constant [J/kg·K]
T = 288.15;               % Temperature [K]
P = 101325;               % Pressure [Pa]

% === Bullet dimensions ===
height = 0.004;           % 4 mm
length = 0.008;           % 8 mm
ref_area = height * 1;    % 2D assumption (depth = 1 m)

% === Mach 1.5 ===
M = 1.5;

% === Calculation for Mach 1.5 ===
a = sqrt(gamma * R * T);       % Speed of sound
V = M * a;                     % Velocity
rho = P / (R * T);             % Air density
Cd = 0.15 + 0.6 / (M^2);       % Approximate Cd for Mach 1.5
q = 0.5 * rho * V^2;           % Dynamic pressure
Drag = q * ref_area * Cd;      % Drag force

% === Print results for Mach 1.5 ===
fprintf("=== Mach 1.5 ===\n");
fprintf(" - Velocity       : %.2f m/s\n", V);
fprintf(" - Density        : %.3f kg/m^3\n", rho);
fprintf(" - Cd             : %.4f\n", Cd);
fprintf(" - Drag Force     : %.4f N\n", Drag);
