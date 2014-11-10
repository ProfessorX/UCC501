%%% UCC501
% 20141109 Lab 23:30

%% Housekeeping
filename = 'Rainfall1.xlsx'
rainfall = xlsread(filename)

%% Working
year = size(rainfall, 1) / 12  % how many years in total
month = 12
rainfall = reshape(rainfall, year, month)  % On another planet
                                           % year/month changes
maxi = max(rainfall, [], 2)  % one in each row
sorted_maxi = sort(maxi, 'descend')
bar(sorted_maxi)

%% Probability
n = 21
i = 1:21
p_recur = (i - 0.44) / (n+0.12)
return_periods = 1 ./ p_recur
plot(sorted_maxi, p_recur)


