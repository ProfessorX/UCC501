% UCC501 HW2 Calc

%% BTU
NG_cf = 2235.169 * 1e9
NG_btu = NG_cf * 1027
NG_mbtu = NG_btu * 1e-6

%% TOE
NG_toe = NG_mbtu * 0.02520
NG_mtoe = NG_toe * 1e-6

%% GKWh
NG_GKwh = NG_mbtu * 1.05506 *1e9 / (3.6*1e6 * 1e9)
% GKwh = MBtu * 0.94782*1e9 / (3.6*1e6 * 1e9) wrong

% just run the above scripts in MATLAB

%% CH4 mass
NG_cm3 = NG_cf * 0.02832
rho = 656
NG_mass = NG_cm3 * rho
CO2_mass = NG_mass * 44 / 16


