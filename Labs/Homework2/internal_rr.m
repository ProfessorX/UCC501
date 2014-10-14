%% Levelized cost of energy

% Housekeeping
solar_scale = 300 * 1e3  % in KW
cost_unit_capital = 2700  % in dollars/Kilowatt
debt_return = 0.03
debt_ratio = 0.7
equity_return = 0.15
equity_ratio = 0.3

const_year = 1
oper_year = 25
n = const_year + oper_year

annu_maintain_rate = 0.05
land_unit_scale = 7.9  % this is is per MW
acre_to_hec = 0.404686
land_unit_compen = 1800  % this is in year

% Yet more housekeeping
% annu_hour = 365 * 24  % assume regular 365 days/year
annu_hour = 1700


%% The battle begins
total_capital_solar = solar_scale * cost_unit_capital  % in dollars
discount_wacc = debt_return*debt_ratio + equity_return*equity_ratio
alpha = 1 / (1 + discount_wacc)

solar_land_area = land_unit_scale * 300  % acres and MW
annu_land_compen = solar_land_area * 1800 * acre_to_hec

%% Time to tariff
unit_tariff = 0.3
annu_tariff = unit_tariff * annu_hour * solar_scale

%% TOTO or Total
total_capital = [total_capital_solar, zeros(1, 25)]
total_maintain = [0, annu_maintain_rate*total_capital_solar .* ones(1, ...
                                                  25)]
total_land = annu_land_compen .* ones(1, 26)
total_tariff = [0, annu_tariff .* ones(1, 25)]

% Net return
total_net_return = total_tariff - (total_capital + total_land + total_maintain)

irr(total_net_return)  % this requires Finance toolbox
