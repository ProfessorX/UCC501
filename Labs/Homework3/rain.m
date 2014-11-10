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
bar(maxi)
