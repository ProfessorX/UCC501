%%% Gone with the wind.
%% 20141110 Lab 04:20


%% Housekeeping
% rho = 1.2754 IT'S WRONG!
rho = 1.1839
l = 60  % Blade Fury
A = pi * l^2
v = 15
cp = 0.275

%% WOrking
power = 0.5 * rho * A * v^3 * cp
power_density = power / A


%% More house keeping
% P = W / t
% W = Pt
years = 5
days = 365
hours = 24
minutes = 60
seconds = 60
yr_seconds = days * hours * minutes * seconds

total_energy = years * yr_seconds * power * 1e-6


