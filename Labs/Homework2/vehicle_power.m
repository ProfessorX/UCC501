
%% Parameters
velocity = 20
d_trip  = 180 * 10^3
rho_air = 1.2
aero_area = 2.45
co_drag = 0.28
mass_vehicle = 1550
gravity = 9.79
co_rolling = 0.01

% Yet more housekeeping


%% 180Km Propulsion power
power_trip = (mass_vehicle * velocity^3)/(2 * d_trip) + 0.5 * rho_air ...
    * aero_area * co_drag * velocity^3 + mass_vehicle * gravity * ...
    co_rolling * velocity


%% Annual Traveler
d_annual = 40 * 1e3 * 1e3  % in meters
time_annual = 40 * 1e3 / 72 % in hours
% This part is not valid
% $$$ power_annual = (mass_vehicle * velocity^3)/(2 * d_annual) + 0.5 * ...
% $$$     rho_air * aero_area * co_drag * velocity^3 + mass_vehicle * ...
% $$$     gravity * co_rolling * velocity
unit_fuel_con = 0.08  % in L/Km
rho_petrol = 0.755  % Kg/L
cars_abud = 600000

fuel_volume_annu = d_annual * 1e-3 * unit_fuel_con   % convert d_annu to
                                             % Km, result in Litre
fuel_mass_annu = rho_petrol * fuel_volume_annu
heat_petrol_unit = 47.30 * 1e6  % MJ/Kg
heat_petrol_annu = fuel_mass_annu * heat_petrol_unit  % in
                                                      % Joules per car
energy_petrol_annu = heat_petrol_annu / (3.6 * 1e6 * 1e3)  % in MWh


%% Year by year
mass_petrol_carbon = (12 / 14.1) * fuel_mass_annu
mass_carbon_dio = (44 / 12) * mass_petrol_carbon  % Carbon
                                                  % Equilibrium
energy_vehicle_abud = energy_petrol_annu * cars_abud  % in MWh
mass_carbon_dio_abud = mass_carbon_dio * cars_abud  % in Kg
%% How much solar must a man consume?
% Yet more and more housekeeping
solar_flh_uae = 1700

energy_solar_five = 0.5 * energy_vehicle_abud
energy_solar_annu = energy_solar_five / 5
power_solar_annu = energy_solar_annu / solar_flh_uae  % for power,
                                                      % we mean Watts



