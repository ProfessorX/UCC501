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

% Life is fucking awesome in AE
total_capital_solar = solar_scale * cost_unit_capital
discount_wacc = debt_return*debt_ratio + equity_return*equity_ratio
alpha = 1 / (1 + discount_wacc)

% npv series (for the rate) = sum (a+a^2+a^3+...+a^26)
npv_rate_series = (alpha * (1-alpha^n))/(1-alpha) % This is the
                                                  % summing up, you
                                                  % ESM people!
npv_total_capital = total_capital_solar / npv_rate_series % This
                                                          % turned
                                                          % out to
                                                          % be annual
annu_maintain_cost = annu_maintain_rate * total_capital_solar
total_maintain_cost = annu_maintain_cost * 26  % this may be 25,
                                               % then we need to
                                               % re-cal npv series
                                               % for it.
npv_total_maintain = total_maintain_cost / npv_rate_series

solar_land_area = land_unit_scale * 300  % acres and MW
annu_land_compen = solar_land_area * 1800 * acre_to_hec
total_land_compen = annu_land_compen * 26
npv_total_land = total_land_compen / npv_rate_series

%% Time to pay
annu_all_cost = npv_total_capital + annu_maintain_cost + ...
    annu_land_compen
levelized_cost = annu_all_cost / (annu_hour * solar_scale)



























% rate_discount = 1/1.066
% series_rate_dr = (rate_discount * (1 - rate_discount^26)) / (1 - rate_discount)

