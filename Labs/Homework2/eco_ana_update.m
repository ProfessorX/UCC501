%% Levelized cost of energy

% Housekeeping
solar_scale = 300 * 1e3
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
annu_hour = 365 * 24  % assume regular 365 days/year
