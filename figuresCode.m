
>> hours = [31 28 31 30 31 30 31 31 30 31 30 31] * 24;
>> wind_MW = (Wind_GWh(:) .* 1000) ./ hours(:);
wave400_MW = (wave400_monthly(:) .* 1000) ./ hours(:);
wave1MW_MW = (wave1MW_monthly(:) .* 1000) ./ hours(:);
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
baseline = 500; % MW
figure;
bar(1:12, [wind_MW wave400_MW], 'stacked');
hold on;
yline(baseline, '--', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 14);
xlabel('Month', 'FontSize', 14);
ylabel('Average Power (MW)', 'FontSize', 14);
legend('Wind','Wave','Baseline','FontSize',12,'Location','northwest');
grid on;
box on:
>> figure;
bar(1:12, [wind_MW wave1MW_MW], 'stacked');
hold on;
yline(baseline, '--', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 14);
xlabel('Month', 'FontSize', 14);
ylabel('Average Power (MW)', 'FontSize', 14);
legend('Wind','Wave','Baseline','FontSize',12,'Location','northwest');
grid on;
box on;
>> figure;
b = bar(1:12, [wind_MW wave400_MW], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410]; % wind (blue)
b(2).FaceColor = [0.8500 0.3250 0.0980]; % wave (orange)
b(2).EdgeColor = 'k'; 
b(2).LineWidth = 1.2;
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Average Power (MW)', 'FontSize', 18);
legend('Wind','Wave','Baseline','FontSize',14,'Location','northwest');
grid on;
box on;
>> figure;
bar(1:12, wave400_MW);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Wave Contribution (MW)', 'FontSize', 18);
grid on;
box on;
>> figure;
b = bar(1:12, [wind_MW wave400_MW], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410]; % wind (blue)
b(2).FaceColor = [0.8500 0.3250 0.0980]; % wave (orange)
b(2).LineWidth = 1.2;
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Average Power (MW)', 'FontSize', 18);
legend('Wind','Wave','Baseline','FontSize',14,'Location','northwest');
grid on;
box on;
>> figure;
b = bar(1:12, [Wind_GWh wave400_GWh], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410]; % Wind (blue)
b(2).FaceColor = [0.8500 0.3250 0.0980]; % Wave (ORANGE)
baseline_MW = 500;
hours_per_month = 24 * 30; % approx
baseline_GWh = baseline_MW * hours_per_month / 1000;
yline(baseline_GWh, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Exported Energy (GWh)', 'FontSize', 18);
legend('Wind', 'Wave', 'Baseline', ...
    'FontSize', 14, 'Location', 'northwest');
grid on;
box on;
Unrecognized function or variable 'wave400_GWh'.
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
baseline = 500; % MW
wind_400 = Ptotal_avg_400(:) - Pwave_avg_400(:);
wave_400 = Pwave_avg_400(:);
figure;
b = bar(1:12, [wind_400 wave_400], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410];        % wind
b(2).FaceColor = [0.8500 0.3250 0.0980];   % wave
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 18);
xlabel('Month', 'FontSize', 20);
ylabel('Average Power (MW)', 'FontSize', 20);
legend('Wind','Wave','Baseline', 'FontSize', 16, 'Location', 'northwest');
grid on;
box on;
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
baseline = 500; % MW
wind_250 = Ptotal_avg_250(:) - Pwave_avg_250(:);
wave_250 = Pwave_avg_250(:);
figure;
b = bar(1:12, [wind_250 wave_250], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410];        % wind
b(2).FaceColor = [0.8500 0.3250 0.0980];   % wave
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 18);
xlabel('Month', 'FontSize', 20);
ylabel('Average Power (MW)', 'FontSize', 20);
legend('Wind','Wave','Baseline', 'FontSize', 16, 'Location', 'northwest');
grid on;
box on;
idx = 1:72;
figure;
plot(idx, wind_speed_raw(idx), 'b'); hold on;
plot(idx, wind_speed_avg(idx), 'r', 'LineWidth', 2);
legend('Raw wind speed','4-hour averaged','Location','best');
xlabel('Time (hours)');
ylabel('Wind speed (m/s)');
grid on;
Unrecognized function or variable 'wind_speed_raw'.
idx = 1:72;
% raw actual wind data
raw = wind_speed(idx);
avg = wind_avg_250;   
idx_avg = linspace(1,72,length(avg(1:18)));

figure;
plot(idx, raw, 'b'); hold on;
plot(idx_avg, avg(1:18), 'r', 'LineWidth', 2);

legend('Raw wind speed','4-hour averaged','Location','best');
xlabel('Time (hours)','FontSize',16);
ylabel('Wind speed (m/s)','FontSize',16);
set(gca,'FontSize',14);
grid on;
raw_trim = raw(1:floor(length(raw)/4)*4);
avg4h = mean(reshape(raw_trim, 4, []), 1)';   % 2190x1
days_to_show = 5;
start_hour = 24*30 + 1;   
end_hour   = start_hour + days_to_show*24 - 1;
raw_window = raw(start_hour:end_hour);
start_block = ceil(start_hour/4);
end_block   = floor(end_hour/4);
avg_window  = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1, length(raw_window), length(avg_window));
figure;
plot(x_raw, raw_window, 'Color', [0 0.4470 0.7410], 'LineWidth', 1); hold on;
plot(x_avg, avg_window, 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2.5);
xlabel('Time (hours)', 'FontSize', 16);
ylabel('Wind Speed (m/s)', 'FontSize', 16);
set(gca, 'FontSize', 14);
legend('Original hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location', 'best');
grid on;
box on;
T = readtable('reanalysis-era5-single-levels-timeseries-sfcia0w92bc.csv');
wind_raw = sqrt(T.u100.^2 + T.v10.^2);
wind_raw = wind_raw(1:8760);   % ensure 8760 points
avg4h = wind_mean_250;   
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window  = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure;
plot(x_raw, raw_window, 'Color',[0 0.4470 0.7410],'LineWidth',1); hold on;
plot(x_avg, avg_window, 'Color',[0.8500 0.3250 0.0980],'LineWidth',3);
xlabel('Time (hours)','FontSize',18);
ylabel('Wind Speed (m/s)','FontSize',18);
set(gca,'FontSize',16);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged (2190 points/year)', ...
       'Location','best');
grid on;
box on; 
>> wind_raw = wind_raw(1:8760);
avg4h = avg_windspeed(:);   %  2190pnt averaged data
start_hour = 2000;   
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure;
plot(x_raw, raw_window, 'LineWidth', 1.2); hold on;
plot(x_avg, avg_window, 'LineWidth', 2.5);
xlabel('Time (hours)', 'FontSize', 18);
ylabel('Wind Speed (m/s)', 'FontSize', 18);
set(gca, 'FontSize', 16);
legend('Original hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location', 'best');
grid on;
box on;
>> whos
>> length(wind_raw)
length(avg4h)
>> avg4h = wind_ms_all;   % correct 4-hour data
>> % RAW DATA (8760)
wind_raw = wind_raw(1:8760);
%% AVERAGED DATA (2196)
avg4h = wind_ms_all;
%% WINDOW (4 days)
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',16);
ylabel('Wind Speed (m/s)','FontSize',16);
set(gca,'FontSize',14);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
wind_raw = wind_raw(1:8760);
avg4h = wind_ms_all;
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',18);
ylabel('Wind Speed (m/s)','FontSize',18);
set(gca,'FontSize',14);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
T = readtable('reanalysis-era5-single-levels-timeseries-sfcia0w92bc.csv');
wind_raw = sqrt(T.u100.^2 + T.v10.^2);   % 8760 points

avg4h = avg_windspeed(:);   % already in workspace (2190 points)
start_hour = 2000;   
duration = 96;       % hours (4 days)
raw_window = wind_raw(start_hour : start_hour + duration - 1);
% Map raw index to averaged index (4-hour blocks)
start_block = ceil(start_hour / 4);
end_block   = floor((start_hour + duration - 1) / 4);
avg_window = avg4h(start_block : end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1, length(raw_window), length(avg_window));
figure;
plot(x_raw, raw_window, 'Color', [0.6 0.6 0.6], 'LineWidth', 1.2); hold on;
plot(x_avg, avg_window, 'b', 'LineWidth', 2.5);
xlabel('Time (hours)', 'FontSize', 22);
ylabel('Wind Speed (m/s)', 'FontSize', 22);
legend({'Hourly data (8760 points/year)', ...
        '4-hour averaged data (2190 points/year)'}, ...
        'FontSize', 18, 'Location', 'best');
set(gca, 'FontSize', 18);   % axis numbers
grid on;
box on;
set(findall(gca, 'Type', 'Line'), 'LineWidth', 2);
Index exceeds the number of array elements. Index must not exceed 12.
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',18);
ylabel('Wind Speed (m/s)','FontSize',18);
set(gca,'FontSize',14);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
Index exceeds the number of array elements. Index must not exceed 12.
>> avg4h = wind_ms_all;
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',18);
ylabel('Wind Speed (m/s)','FontSize',18);
set(gca,'FontSize',14);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',20);
ylabel('Wind Speed (m/s)','FontSize',20);
set(gca,'FontSize',18);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
>> figure('Color','w','Position',[200 200 1000 500]);
b = bar(1:12, wind_GWh);   % monthly wind energy (GWh)
b.FaceColor = [0 0.4470 0.7410];
%% AXES
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...   % {'Jan','Feb',...}
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Energy (GWh)', 'FontSize', 22);
grid on;
box on;
Unrecognized function or variable 'wind_GWh'.
b = bar(1:12, avg_power);   % monthly AVERAGE EXPORTED POWER (MW)
b.FaceColor = [0 0.4470 0.7410];
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...   % {'Jan','Feb',...}
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Power (MW)', 'FontSize', 22);
grid on;
box on;
ylim([0 max(avg_power)*1.1]);
>> figure('Color','w','Position',[200 200 1000 500]);
b = bar(1:12, avg_power);   % monthly AVERAGE EXPORTED POWER (MW)
b.FaceColor = [0 0.4470 0.7410];
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...   % {'Jan','Feb',...}
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Power (MW)', 'FontSize', 22);
grid on;
box on;
ylim([0 max(avg_power)*1.1]);
>> figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, wave_pct_400, '-o', ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5, 'MarkerSize',7); hold on;
plot(1:12, wave_pct_1MW, '-s', ...
    'Color',[0.8500 0.3250 0.0980], ...
    'LineWidth',2.5, 'MarkerSize',7);
set(gca, ...
    'XTick',1:12, ...
    'XTickLabel',months, ...
    'FontSize',18, ...
    'LineWidth',1.2);
xlabel('Month','FontSize',22);
ylabel('Wave Contribution (%)','FontSize',22);
legend({'400 CorPower (300 kW)', ...
        '250 WEC (1 MW)'}, ...
        'FontSize',16, ...
        'Location','northwest');
grid on;
box on; 
>> figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, avg_power_400, '-o', ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5, 'MarkerSize',7); hold on;
plot(1:12, avg_power_1MW, '-s', ...
    'Color',[0.8500 0.3250 0.0980], ...
    'LineWidth',2.5, 'MarkerSize',7);
set(gca, ...
    'XTick',1:12, ...
    'XTickLabel',months, ...
    'FontSize',18, ...
    'LineWidth',1.2);
xlabel('Month','FontSize',22);
ylabel('Average Exported Power (MW)','FontSize',22);
legend({'400 CorPower (300 kW)', ...
        '250 WEC (1 MW)'}, ...
        'FontSize',16, ...
        'Location','northwest');
grid on;
box on;
ylim([200 max([avg_power_400 avg_power_1MW])*1.05]);
Unrecognized function or variable 'avg_power_400'.
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
P_400 = avg_power + avg_gain_400;
P_250 = avg_power + avg_gain_250;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'Color', [0 0.4470 0.7410], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
hold on;
plot(1:12, P_250, '-s', ...
    'Color', [0.8500 0.3250 0.0980], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Exported Power (MW)', 'FontSize', 22);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 16, ...
    'Location', 'northwest');
grid on;
box on;
ylim([200 max([P_400(:); P_250(:)])*1.05]);
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};

share_400 = WEC_share_m(:);
share_250 = Wave_share_m(:);
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, share_400, '-o', ...
    'Color', [0 0.4470 0.7410], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
hold on;
plot(1:12, share_250, '-s', ...
    'Color', [0.8500 0.3250 0.0980], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Wave Contribution (%)', 'FontSize', 22);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 16, ...
    'Location', 'northwest');
grid on;
box on;
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
P_400 = wind_400 + wave400_MW;
P_1MW = wind_400 + wave1MW_MW;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'MarkerSize', 6);
hold on;
plot(1:12, P_1MW, '-s', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);   
xlabel('Month', 'FontSize', 26);
ylabel('Average Exported Power (MW)', 'FontSize', 26);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 20, ...
    'Location', 'northwest');
grid on;
box on;
>> figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, wave_share_400, '-o', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
hold on;
plot(1:12, wave_share_250, '-s', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);   
xlabel('Month', 'FontSize', 26);
ylabel('Wave Contribution (%)', 'FontSize', 26);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 20, ...
    'Location', 'northwest');
grid on;
box on;
P_400 = avg_power + avg_gain_400;
P_250 = avg_power + avg_gain_250;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'Color', [0 0.4470 0.7410], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
hold on;
plot(1:12, P_250, '-s', ...
    'Color', [0.8500 0.3250 0.0980], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 16, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Exported Power (MW)', 'FontSize', 22);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 16, ...
    'Location', 'northwest');
grid on;
box on;
ylim([200 max([P_400(:); P_250(:)])*1.05]);
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
P_400 = avg_power + avg_gain_400;
P_250 = avg_power + avg_gain_250;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'Color', [0 0.4470 0.7410], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
hold on;
plot(1:12, P_250, '-s', ...
    'Color', [0.8500 0.3250 0.0980], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Exported Power (MW)', 'FontSize', 22);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 16, ...
    'Location', 'northwest');
grid on;
box on;
ylim([200 max([P_400(:); P_250(:)])*1.05]);
>> whos wave_share_400
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, wave_share_400, '-o', ...
    'LineWidth', 1.2, ...
    'MarkerSize', 6);
hold on;
plot(1:12, wave_share_250, '-s', ...
    'LineWidth', 1.2, ...
    'MarkerSize', 6);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);
xlabel('Month', 'FontSize', 26);
ylabel('Wave Contribution (%)', 'FontSize', 26);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 20, ...
    'Location', 'northwest');

grid on;
box on; 
>> load('the_simulation_THIS.mat')
>> load('FULLYEAR_WORKSPACE_SAFE.mat')
t = TimeVec;
Pwind = Pwind_MW;
Ptotal = P_export_MW;
months = month(t);
for m = 1:12
    idx = months == m;
    wind_month(m) = mean(Pwind(idx));
    total_month(m) = mean(Ptotal(idx));
end
figure
bar(1:12, [wind_month' total_month'], 'grouped')
xlabel('Month')
ylabel('Power (MW)')
legend('Wind Only','Exported Power')
title('Monthly Average Power')
grid on
>> load('FULLYEAR_WORKSPACE_SAFE.mat')
t = TimeVec;
months = month(t);
Pwind = Pwind_MW;
wind_speed = ws4;
for m = 1:12
    idx = months == m;
    avg_power(m) = mean(Pwind(idx));
    avg_windspeed(m) = mean(wind_speed(idx));
end
figure
bar(1:12, avg_power)
xlabel('Month')
ylabel('Power (MW)')
title('Monthly Average Wind Power Output')
grid on
figure
bar(1:12, avg_windspeed)
xlabel('Month')
ylabel('Wind Speed (m/s)')
title('Monthly Average Wind Speed')
grid on
>> load('FULLYEAR_WORKSPACE_SAFE.mat')
t = TimeVec;
months = month(t);
Pwind = Pwind_MW;
wind_speed = ws4;
for m = 1:12
    idx = months == m;
    avg_power(m) = mean(Pwind(idx));
    avg_windspeed(m) = mean(wind_speed(idx));
end
month_names = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
figure
bar(1:12, avg_power)
xticks(1:12)
xticklabels(month_names)
xlabel('Month')
ylabel('Power (MW)')
title('Monthly Average Wind Power Output')
grid on
figure
bar(1:12, avg_windspeed)
xticks(1:12)
xticklabels(month_names)
xlabel('Month')
ylabel('Wind Speed (m/s)')
title('Monthly Average Wind Speed')
grid on
>> P = Pwind_MW;
P_sorted = sort(P, 'descend');
figure
plot(P_sorted)
xlabel('Time (sorted)')
ylabel('Power (MW)')
title('Wind Power Duration Curve')
grid on
>> winter = mean(avg_power([12 1 2]));
spring = mean(avg_power([3 4 5]));
summer = mean(avg_power([6 7 8]));
autumn = mean(avg_power([9 10 11]));
season_power = [winter spring summer autumn];
figure
bar(season_power)
xticklabels({'Winter','Spring','Summer','Autumn'})
ylabel('Power (MW)')
title('Seasonal Average Wind Power')
grid on
>> winter = mean(avg_power([12 1 2]));
spring = mean(avg_power([3 4 5]));
summer = mean(avg_power([6 7 8]));
autumn = mean(avg_power([9 10 11]));
season_power = [winter spring summer autumn];
figure
bar(season_power)
xticklabels({'Winter','Spring','Summer','Fall'})
ylabel('Power (MW)')
title('Seasonal Average Wind Power')
grid on
>> P = Pwind_MW;
P_sorted = sort(P, 'descend');
figure
plot(P_sorted, 'LineWidth', 1.5)
xlabel('Time (sorted)')
ylabel('Power (MW)')
title('Wind Power Duration Curve')
grid on
>> figure
scatter(ws4, Pwind_MW, 10, 'filled')
xlabel('Wind Speed (m/s)')
ylabel('Power (MW)')
title('Wind Speed vs Power Output')
grid on
>> P = Pwind_MW;
P_sorted = sort(P, 'descend');
figure
plot(P_sorted, 'LineWidth', 1.5)
xlabel('Time (sorted)')
ylabel('Power (MW)')
title('Wind Power Duration Curve')
grid on
>> load('FULLYEAR_WORKSPACE_SAFE.mat')
t = TimeVec;
months = month(t);
Pwind = Pwind_MW;
dt_hours = 4;
for m = 1:12
    idx = months == m;
    monthly_energy_GWh(m) = sum(Pwind(idx) * dt_hours) / 1000;
end
month_names = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
figure
bar(1:12, monthly_energy_GWh)
xticks(1:12)
xticklabels(month_names)
xlabel('Month')
ylabel('Energy (GWh)')
title('Monthly Exported Wind Energy')
grid on
wave_400 = wave_400_MW;   % 400 CorPower wave power
wave_1MW = wave_250_MW;   % 1MW WEC wave power
ratio = wave_1MW ./ wave_400;
figure
plot(ratio, 'o-')
yline(mean(ratio), '--')
title('Scaling Check: 1MW vs 400 CorPower')
xlabel('Time')
ylabel('Ratio')
grid on
mean_ratio = mean(ratio)
std_ratio = std(ratio)
>> wind = Pwind_MW;
contrib_400 = wave_400 ./ (wind + wave_400);
contrib_1MW = wave_1MW ./ (wind + wave_1MW);
diff_contrib = contrib_1MW - contrib_400;
figure
plot(diff_contrib, 'LineWidth',1.5)
title('Difference in Wave Contribution (%)')
xlabel('Time')
ylabel('Difference')
grid on

t = TimeVec;              
months = month(t);
wind = Pwind_MW;                     
wave = wave_250_MW;                  
wind_monthly = zeros(1,12);
wave_monthly = zeros(1,12);
for m = 1:12
    idx = months == m;
    wind_monthly(m) = mean(wind(idx));
    wave_monthly(m) = mean(wave(idx));
end
month_names = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
figure
plot(1:12, wind_monthly, '-o', 'LineWidth', 2)
hold on
plot(1:12, wave_monthly, '-s', 'LineWidth', 2)
xticks(1:12)
xticklabels(month_names)
xlabel('Month')
ylabel('Average Power (MW)')
title('Monthly Average Wind vs Wave Energy')
legend('Wind','Wave')
grid on
figure
scatter(wind, wave, 10, 'filled')
xlabel('Wind Power (MW)')
ylabel('Wave Power (MW)')
title('Wind vs Wave Energy Correlation')
grid on
>> wave1 = wave_400_MW;
wave2 = wave_250_MW;
plot(1:12, wind_monthly, '-o', 'LineWidth', 2)
hold on
plot(1:12, wave1_monthly, '-s', 'LineWidth', 2)
plot(1:12, wave2_monthly, '-d', 'LineWidth', 2)
legend('Wind','Wave (400 CorPower)','Wave (1MW WEC)')
Unrecognized function or variable 'wave_400_MW'.
t = date_only;                   
months = month(t);
wind = Pwind_MW;
wave_400 = Curt_400;          
wave_1MW = Curt_250;            % 1 MW WEC
wind_monthly = zeros(1,12);
wave400_monthly = zeros(1,12);
wave1MW_monthly = zeros(1,12);
for m = 1:12
    idx = months == m;
    wind_monthly(m) = mean(wind(idx));
    wave400_monthly(m) = mean(wave_400(idx));
    wave1MW_monthly(m) = mean(wave_1MW(idx));
end
month_names = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
figure
plot(1:12, wind_monthly, '-o', 'LineWidth', 2)
hold on
plot(1:12, wave400_monthly, '-s', 'LineWidth', 2)
plot(1:12, wave1MW_monthly, '-d', 'LineWidth', 2)
xticks(1:12)
xticklabels(month_names)
xlabel('Month')
ylabel('Average Power (MW)')
title('Monthly Average Wind vs Wave Energy')
legend('Wind','Wave (400 CorPower)','Wave (1 MW WEC)')
grid on
figure
scatter(wind, wave_400, 10, 'filled')
xlabel('Wind Power (MW)')
ylabel('Wave Power (MW)')
title('Wind vs Wave Correlation (CorPower)')
grid on
R1 = corrcoef(wind, wave_400);
disp(['Correlation (CorPower) = ', num2str(R1(1,2))])
figure
scatter(wind, wave_1MW, 10, 'filled')
xlabel('Wind Power (MW)')
ylabel('Wave Power (MW)')
title('Wind vs Wave Correlation (1 MW WEC)')
grid on
R2 = corrcoef(wind, wave_1MW);
disp(['Correlation (1 MW) = ', num2str(R2(1,2))])
Correlation (CorPower) = NaN
Correlation (1 MW) = NaN
>> load('the_simulation_THIS.mat')
t = date_only;
months = month(t);
wind_speed = ws4;
wave_resource = Wave_MW_in;
wind_monthly = zeros(1,12);
wave_monthly = zeros(1,12);
for m = 1:12
    idx = months == m;
    wind_monthly(m) = mean(wind_speed(idx));
    wave_monthly(m) = mean(wave_resource(idx));
end
wind_norm = wind_monthly / max(wind_monthly);
wave_norm = wave_monthly / max(wave_monthly);
month_names = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
figure
plot(1:12, wind_norm, '-o', 'LineWidth', 2)
hold on
plot(1:12, wave_norm, '-s', 'LineWidth', 2)
xticks(1:12)
xticklabels(month_names)
xlabel('Month')
ylabel('Normalised value')
title('Monthly Trend of Wind and Wave Resource')
legend('Wind speed','Wave energy')
grid on
figure
scatter(wind_speed, wave_resource, 20, 'filled')
xlabel('Wind Speed (m/s)')
ylabel('Wave Energy Input (MW)')
title('Wind Speed vs Wave Energy Input')
grid on
R = corrcoef(wind_speed, wave_resource);
disp(['Correlation coefficient = ', num2str(R(1,2))])
Correlation coefficient = 0.39027
>> load('the_simulation_THIS.mat')
t = date_only;
months = month(t);
wind_speed = ws4;          
wave_resource = Wave_MW_in; 
wind_monthly = zeros(1,12);
wave_monthly = zeros(1,12);
for m = 1:12
    idx = months == m;
    wind_monthly(m) = mean(wind_speed(idx));
    wave_monthly(m) = mean(wave_resource(idx));
end
wind_norm = wind_monthly / max(wind_monthly);
wave_norm = wave_monthly / max(wave_monthly);
month_names = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
figure
bar([wind_norm; wave_norm]')
xticks(1:12)
xticklabels(month_names)
xlabel('Month')
ylabel('Normalised Resource')
title('Monthly Comparison of Wind and Wave Resource')
legend('Wind Speed','Wave Energy')
grid on
>> methods = {'Full-year continuous','4-hour averaged iterative'};
numSamples = [3.15e11, 2190];
compTimeHours = [168, 3];
figure
b1 = bar([1 2], numSamples, 0.42);
ylabel('Number of simulation steps / operating points')
set(gca, 'YScale', 'log')
yyaxis right
b2 = bar([1 2], compTimeHours, 0.42);
ylabel('Computation time (hours)')
set(gca, 'XTick', [1 2], 'XTickLabel', methods, 'FontSize', 11)
xtickangle(10)
title('Comparison of simulation effort between continuous and segmented approaches')
grid on
legend({'Simulation steps / operating points','Computation time'}, 'Location', 'northwest')
>> 
methods = {'Full-year continuous','4-hour averaged iterative'};
numSamples = [3.15e11, 2190];
compTimeHours = [168, 3];
figure
bar(numSamples)
set(gca, 'YScale', 'log', 'XTickLabel', methods, 'FontSize', 11)
xtickangle(10)
ylabel('Number of simulation steps / operating points')
title('Comparison of simulation steps')
grid on
figure
bar(compTimeHours)
set(gca, 'XTickLabel', methods, 'FontSize', 11)
xtickangle(10)
ylabel('Computation time (hours)')
title('Comparison of computation time')
grid on
>> methods = {'Full-year continuous','4-hour averaged iterative'};
numSamples = [3.15e11, 2190];
compTimeHours = [168, 3];
figure
yyaxis left
b1 = bar([1 2], numSamples, 0.42);
ylabel('Number of simulation steps / operating points')
set(gca, 'YScale', 'log')
yyaxis right
b2 = bar([1 2], compTimeHours, 0.42);
ylabel('Computation time (hours)')
set(gca, 'XTick', [1 2], 'XTickLabel', methods, 'FontSize', 11)
xtickangle(10)
grid on
legend({'Simulation steps / operating points','Computation time'}, 'Location', 'northwest')
months = month(time);
monthlyAvg = zeros(12,1);
for m = 1:12
    monthlyAvg(m) = mean(windSpeed(months == m));
end
>> WindTable = table(monthNames, wind_month', ...
    'VariableNames', {'Month', 'AverageWindSpeed_m_per_s'});
>> disp(WindTable)
    Month    AverageWindSpeed_m_per_s
    _____    ________________________
    "Jan"             583.79         
    "Feb"             549.33         
    "Mar"             489.12         
    "Apr"             537.21         
    "May"             249.57         
    "Jun"             338.94         
    "Jul"             280.27         
    "Aug"             518.08         
    "Sep"             346.07         
    "Oct"             524.14         
    "Nov"             454.25         
    "Dec"             652.06         
>> % Create time vector (hourly data assumed)
time = datetime(2024,1,1,0,0,0) + hours(0:length(wind_ms)-1);

months = month(time);
monthlyAvg = zeros(12,1);

for m = 1:12
    monthlyAvg(m) = mean(wind_ms(months == m));
end
monthNames = ["Jan"; "Feb"; "Mar"; "Apr"; "May"; "Jun"; ...
              "Jul"; "Aug"; "Sep"; "Oct"; "Nov"; "Dec"];
>> % Create time vector (hourly data assumed)
time = datetime(2024,1,1,0,0,0) + hours(0:length(wind_ms)-1);

% Extract months
months = month(time);

% Preallocate
monthlyAvg = zeros(12,1);

% Compute monthly averages
for m = 1:12
    monthlyAvg(m) = mean(wind_ms(months == m));
end
>> % Time vector for 4-hour data
time = datetime(2024,1,1) + hours(4*(0:length(wind_ms)-1));

% Get month index
months = month(time);

% Compute averages
monthlyAvg = zeros(12,1);
for m = 1:12
    monthlyAvg(m) = mean(wind_ms(months == m));
end

>> w = wind_speed_ms(:); 
time = datetime(2024,1,1) + hours(4*(0:length(w)-1))';
months = month(time);
monthlyAvg = zeros(12,1);
for m = 1:12
    monthlyAvg(m) = mean(w(months == m), 'omitnan');
end
monthNames = ["Jan";"Feb";"Mar";"Apr";"May";"Jun";...
              "Jul";"Aug";"Sep";"Oct";"Nov";"Dec"];
WindTable = table(monthNames, round(monthlyAvg,2), ...
    'VariableNames', {'Month','AvgWindSpeed_m_s'});
wind = wind_monthly;   
wave = wec_monthly;    
total = wind + wave;
baseline = 500; % MW threshold
figure;
bar(1:12, [wind(:), wave(:)], 'stacked');
hold on;
yline(baseline, '--r', 'LineWidth', 2);
% ===== MARK BELOW THRESHOLD =====
below_idx = total < baseline;
plot(find(below_idx), total(below_idx), 'rv', ...
    'MarkerSize', 10, 'MarkerFaceColor', 'r');
set(gca, 'XTick', 1:12, 'XTickLabel', months);
xlabel('Month', 'FontSize', 14);
ylabel('Exported Power (MW)', 'FontSize', 14);
set(gca, 'FontSize', 14); % BIGGER FONT
legend('Wind','Wave','Baseline','Below Threshold', ...
>> months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
wind = wind_monthly;   % your wind data
wave = waveMW;         % your WEC data
total = wind + wave;
baseline = 500; % MW
figure;
bar(1:12, [wind(:), wave(:)], 'stacked');
hold on;
yline(baseline, '--r', 'LineWidth', 2);
below_idx = total < baseline;
plot(find(below_idx), total(below_idx), 'rv', ...
    'MarkerSize', 10, 'MarkerFaceColor', 'r');
set(gca, 'XTick', 1:12, 'XTickLabel', months);
xlabel('Month', 'FontSize', 14);
ylabel('Exported Power (MW)', 'FontSize', 14);
set(gca, 'FontSize', 14);
legend('Wind','Wave','Baseline','Below Threshold', ...
    'FontSize', 12, 'Location','northwest');
grid on;
box on;
>> months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
wind = wind_monthly;        
wave = WEC_share_m;         
total = wind + wave;
baseline = 500; 
figure;
bar(1:12, [wind(:), wave(:)], 'stacked');
hold on;
yline(baseline, '--r', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months);
xlabel('Month', 'FontSize', 14);
ylabel('Exported Power (MW)', 'FontSize', 14);
set(gca, 'FontSize', 14);
legend('Wind','Wave','Baseline', ...
    'FontSize', 12, 'Location','northwest');
grid on;
box on;
>> hours = [31 28 31 30 31 30 31 31 30 31 30 31] * 24;
>> wind_MW = (Wind_GWh(:) .* 1000) ./ hours(:);
wave400_MW = (wave400_monthly(:) .* 1000) ./ hours(:);
wave1MW_MW = (wave1MW_monthly(:) .* 1000) ./ hours(:);
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
baseline = 500; 
figure;
bar(1:12, [wind_MW wave400_MW], 'stacked');
hold on;
yline(baseline, '--', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 14);
xlabel('Month', 'FontSize', 14);
ylabel('Average Power (MW)', 'FontSize', 14);
legend('Wind','Wave','Baseline','FontSize',12,'Location','northwest');
grid on;
box on;
>> figure;
bar(1:12, [wind_MW wave1MW_MW], 'stacked');
hold on;
yline(baseline, '--', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 14);
xlabel('Month', 'FontSize', 14);
ylabel('Average Power (MW)', 'FontSize', 14);
legend('Wind','Wave','Baseline','FontSize',12,'Location','northwest');
grid on;
box on;
>> figure;
b = bar(1:12, [wind_MW wave400_MW], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410]; % wind (blue)
b(2).FaceColor = [0.8500 0.3250 0.0980]; % wave (orange)
b(2).EdgeColor = 'k'; % black edge
b(2).LineWidth = 1.2;
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Average Power (MW)', 'FontSize', 18);
legend('Wind','Wave','Baseline','FontSize',14,'Location','northwest');
grid on;
box on;
>> figure;
bar(1:12, wave400_MW);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Wave Contribution (MW)', 'FontSize', 18);
grid on;
box on;
>> figure;
b = bar(1:12, [wind_MW wave400_MW], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410]; % wind (blue)
b(2).FaceColor = [0.8500 0.3250 0.0980]; % wave (orange)
b(2).EdgeColor = 'k'; % black edge
b(2).LineWidth = 1.2;
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Average Power (MW)', 'FontSize', 18);
legend('Wind','Wave','Baseline','FontSize',14,'Location','northwest');
grid on;
box on;
>> figure;
b = bar(1:12, [Wind_GWh wave400_GWh], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410]; % Wind (blue)
b(2).FaceColor = [0.8500 0.3250 0.0980]; % Wave (ORANGE)
baseline_MW = 500;
hours_per_month = 24 * 30; % approx
baseline_GWh = baseline_MW * hours_per_month / 1000;
yline(baseline_GWh, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 16);
xlabel('Month', 'FontSize', 18);
ylabel('Exported Energy (GWh)', 'FontSize', 18);
legend('Wind', 'Wave', 'Baseline', ...
    'FontSize', 14, 'Location', 'northwest');
grid on;
box on;
 
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
baseline = 500; 
wind_400 = Ptotal_avg_400(:) - Pwave_avg_400(:);
wave_400 = Pwave_avg_400(:);
figure;
b = bar(1:12, [wind_400 wave_400], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410];        % wind
b(2).FaceColor = [0.8500 0.3250 0.0980];   % wave
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 18);
xlabel('Month', 'FontSize', 20);
ylabel('Average Power (MW)', 'FontSize', 20);
legend('Wind','Wave','Baseline', 'FontSize', 16, 'Location', 'northwest');
grid on;
box on;
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
baseline = 500; 
wind_250 = Ptotal_avg_250(:) - Pwave_avg_250(:);
wave_250 = Pwave_avg_250(:);
figure;
b = bar(1:12, [wind_250 wave_250], 'stacked');
hold on;
b(1).FaceColor = [0 0.4470 0.7410];        % wind
b(2).FaceColor = [0.8500 0.3250 0.0980];   % wave
yline(baseline, '--k', 'LineWidth', 2);
set(gca, 'XTick', 1:12, 'XTickLabel', months, 'FontSize', 18);
xlabel('Month', 'FontSize', 20);
ylabel('Average Power (MW)', 'FontSize', 20);
legend('Wind','Wave','Baseline', 'FontSize', 16, 'Location', 'northwest');
grid on;
box on;
idx = 1:72;
figure;
plot(idx, wind_speed_raw(idx), 'b'); hold on;
plot(idx, wind_speed_avg(idx), 'r', 'LineWidth', 2);
legend('Raw wind speed','4-hour averaged','Location','best');
xlabel('Time (hours)');
ylabel('Wind speed (m/s)');
grid on;
idx = 1:72;
raw = wind_speed(idx);
avg = wind_avg_250;   
idx_avg = linspace(1,72,length(avg(1:18))); % 72h → 18 points (4h avg)
figure;
plot(idx, raw, 'b'); hold on;
plot(idx_avg, avg(1:18), 'r', 'LineWidth', 2);
legend('Raw wind speed','4-hour averaged','Location','best');
xlabel('Time (hours)','FontSize',16);
ylabel('Wind speed (m/s)','FontSize',16);
set(gca,'FontSize',14);
grid on;
raw_trim = raw(1:floor(length(raw)/4)*4);
avg4h = mean(reshape(raw_trim, 4, []), 1)';   % 2190x1
days_to_show = 5;
start_hour = 24*30 + 1;   % example start somewhere in the year
end_hour   = start_hour + days_to_show*24 - 1;
raw_window = raw(start_hour:end_hour);
start_block = ceil(start_hour/4);
end_block   = floor(end_hour/4);
avg_window  = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1, length(raw_window), length(avg_window));
figure;
plot(x_raw, raw_window, 'Color', [0 0.4470 0.7410], 'LineWidth', 1); hold on;
plot(x_avg, avg_window, 'Color', [0.8500 0.3250 0.0980], 'LineWidth', 2.5);

xlabel('Time (hours)', 'FontSize', 16);
ylabel('Wind Speed (m/s)', 'FontSize', 16);
set(gca, 'FontSize', 14);
legend('Original hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location', 'best');
grid on;
box on;
Unrecognized function or variable 'wind_raw_8760'.
>> T = readtable('reanalysis-era5-single-levels-timeseries-sfcia0w92bc.csv');
>> T.Properties.VariableNames
>> avg4h = wind_ms_all;   
>> %% RAW DATA (8760)
wind_raw = wind_raw(1:8760);
avg4h = wind_ms_all;
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',16);
ylabel('Wind Speed (m/s)','FontSize',16);
set(gca,'FontSize',14);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
wind_raw = wind_raw(1:8760);
avg4h = wind_ms_all;
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',18);
ylabel('Wind Speed (m/s)','FontSize',18);
set(gca,'FontSize',14);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
T = readtable('reanalysis-era5-single-levels-timeseries-sfcia0w92bc.csv');
wind_raw = sqrt(T.u100.^2 + T.v10.^2
avg4h = avg_windspeed(:);   % already in workspace (2190 points)
start_hour = 2000
duration = 96;       
raw_window = wind_raw(start_hour : start_hour + duration - 1);
start_block = ceil(start_hour / 4);
end_block   = floor((start_hour + duration - 1) / 4);
avg_window = avg4h(start_block : end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1, length(raw_window), length(avg_window));
figure;
plot(x_raw, raw_window, 'Color', [0.6 0.6 0.6], 'LineWidth', 1.2); hold on;
plot(x_avg, avg_window, 'b', 'LineWidth', 2.5);
xlabel('Time (hours)', 'FontSize', 22);
ylabel('Wind Speed (m/s)', 'FontSize', 22);
legend({'Hourly data (8760 points/year)', ...
        '4-hour averaged data (2190 points/year)'}, ...
        'FontSize', 18, 'Location', 'best');
set(gca, 'FontSize', 18);   % axis numbers
grid on;
box on;
set(findall(gca, 'Type', 'Line'), 'LineWidth', 2);
Index exceeds the number of array elements. Index must not exceed 12. 
start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
>> start_hour = 2000;
duration = 96;
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 900 400]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',20);
ylabel('Wind Speed (m/s)','FontSize',20);
set(gca,'FontSize',18);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest');
grid on;
box on;
>> figure('Color','w','Position',[200 200 1000 500]);
b = bar(1:12, wind_GWh
b.FaceColor = [0 0.4470 0.7410];
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...   % {'Jan','Feb',...}
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Energy (GWh)', 'FontSize', 22);
grid on;
box on;
b = bar(1:12, avg_power);   % monthly AVERAGE EXPORTED POWER (MW)
b.FaceColor = [0 0.4470 0.7410];
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...   % {'Jan','Feb',...}
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Power (MW)', 'FontSize', 22);
grid on;
box on;
ylim([0 max(avg_power)*1.1]);
>> figure('Color','w','Position',[200 200 1000 500]);
b = bar(1:12, avg_power);
b.FaceColor = [0 0.4470 0.7410];
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...   % {'Jan','Feb',...}
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Power (MW)', 'FontSize', 22);
grid on;
box on;

ylim([0 max(avg_power)*1.1]);
>> figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, wave_pct_400, '-o', ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5, 'MarkerSize',7); hold on;
plot(1:12, wave_pct_1MW, '-s', ...
    'Color',[0.8500 0.3250 0.0980], ...
    'LineWidth',2.5, 'MarkerSize',7);
set(gca, ...
    'XTick',1:12, ...
    'XTickLabel',months, ...
    'FontSize',18, ...
    'LineWidth',1.2);
xlabel('Month','FontSize',22);
ylabel('Wave Contribution (%)','FontSize',22);
legend({'400 CorPower (300 kW)', ...
        '250 WEC (1 MW)'}, ...
        'FontSize',16, ...
        'Location','northwest');
grid on;
box on;
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
P_400 = avg_power + avg_gain_400;
P_250 = avg_power + avg_gain_250;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'Color', [0 0.4470 0.7410], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
hold on;
plot(1:12, P_250, '-s', ...
    'Color', [0.8500 0.3250 0.0980], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 18, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Exported Power (MW)', 'FontSize', 22);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 16, ...
    'Location', 'northwest');
grid on;
box on;
ylim([200 max([P_400(:); P_250(:)])*1.05]);
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
P_400 = wind_400 + wave400_MW;
P_1MW = wind_400 + wave1MW_MW;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'LineWidth', 1.5, ...       
    'MarkerSize', 6);
hold on;
plot(1:12, P_1MW, '-s', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);   
xlabel('Month', 'FontSize', 26);
ylabel('Average Exported Power (MW)', 'FontSize', 26);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 20, ...
    'Location', 'northwest');
grid on;
box on;
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
P_400 = avg_power + avg_gain_400;
P_250 = avg_power + avg_gain_250;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'Color', [0 0.4470 0.7410], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
hold on;
plot(1:12, P_250, '-s', ...
    'Color', [0.8500 0.3250 0.0980], ...
    'LineWidth', 2.5, ...
    'MarkerSize', 7);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 16, ...
    'LineWidth', 1.2);
xlabel('Month', 'FontSize', 22);
ylabel('Average Exported Power (MW)', 'FontSize', 22);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 16, ...
    'Location', 'northwest');
grid on;
box on;
ylim([200 max([P_400(:); P_250(:)])*1.05]);
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
P_400 = wind_400 + wave400_MW;
P_250 = wind_400 + wave1MW_MW;
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'LineWidth', 1.2, ...
    'MarkerSize', 6);
hold on;
plot(1:12, P_250, '-s', ...
    'LineWidth', 1.2, ...
    'MarkerSize', 6);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);
xlabel('Month', 'FontSize', 26);
ylabel('Average Exported Power (MW)', 'FontSize', 26);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 20, ...
    'Location', 'northwest');
grid on;
box on;
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
% TOTAL EXPORTED POWER (wind + wave)
P_400 = wind_400 + wave400_MW;     % 400 CorPower case
P_250 = wind_400 + wave1MW_MW;     % 250 WEC 1MW case
figure('Color','w','Position',[200 200 1000 500]);
plot(1:12, P_400, '-o', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
hold on;
plot(1:12, P_250, '-s', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);
xlabel('Month','FontSize',26);
ylabel('Average Exported Power (MW)','FontSize',26);
legend({'400 CorPower (300 kW)','250 WEC (1 MW)'}, ...
    'FontSize',20, ...
    'Location','northwest');
grid on;
box on;
P400 = hybrid_mean_400(:);
P250 = hybrid_mean_250(:);
disp(size(P400))
disp(size(P250))
disp(P400)
disp(P250)
figure('Color','w','Position',[200 200 1000 500]);
plot(1:length(P400), P400, '-o', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
hold on;
plot(1:length(P250), P250, '-s', ...
    'LineWidth', 1.5, ...
    'MarkerSize', 6);
set(gca, ...
    'XTick', 1:length(P400), ...
    'XTickLabel', months(1:length(P400)), ...
    'FontSize', 22);
xlabel('Month', 'FontSize', 26);
ylabel('Average Exported Power (MW)', 'FontSize', 26);
legend({'400 CorPower (300 kW)', '250 WEC (1 MW)'}, ...
    'FontSize', 20, ...
    'Location', 'northwest');
grid on;
box on;
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
wind_only = wind_month(:);
figure('Color','w','Position',[200 200 1000 500]);
bar(wind_only);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 24);
xlabel('Month', 'FontSize', 28);
ylabel('Average Exported Power (MW)', 'FontSize', 28);
grid on;
box on;
ylim([0 700]);
>> total_400 = wind_month(:) + wave400_MW(:);
baseline_400 = mean(total_400);
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
wind = wind_month(:);
wave = wave400_MW(:);
figure('Color','w','Position',[200 200 1000 500]);
bar([wind wave], 'stacked');
hold on;
yline(baseline_400, '--k', 'LineWidth', 2);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);
xlabel('Month', 'FontSize', 26);
ylabel('Average Power (MW)', 'FontSize', 26);
legend({'Wind','Wave','Baseline'}, ...
    'FontSize', 20, ...
    'Location', 'north');
grid on;
box on;
ylim([0 700]);
>> baseline_400
baseline_400 =
  470.1870
>> total_1MW = wind_month(:) + wave1MW_MW(:);  
baseline_1MW = mean(total_1MW);              % average baseline
>> baseline_1MW
baseline_1MW =
  479.2129
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
wind = wind_month(:);
wave = wave1MW_MW(:);
figure('Color','w','Position',[200 200 1000 500]);
bar([wind wave], 'stacked');
hold on;
yline(baseline_1MW, '--k', 'LineWidth', 2);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);
xlabel('Month', 'FontSize', 26);
ylabel('Average Power (MW)', 'FontSize', 26);
legend({'Wind','Wave','Baseline'}, ...
    'FontSize', 20, ...
    'Location', 'north');
grid on;
box on;
ylim([0 700]);
start_hour = 2000;
duration   = 336;      % 14 days
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = 1:length(raw_window);
x_avg = linspace(1,length(raw_window),length(avg_window));
figure('Color','w','Position',[200 200 1200 500]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (hours)','FontSize',20);
ylabel('Wind Speed (m/s)','FontSize',20);
set(gca,'FontSize',18);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest', ...
       'FontSize',16);
grid on;
box on;
>> %(1 month ≈ 720 hours)
start_hour = 2000; 
duration   = 720;       % 30 days
raw_window = wind_raw(start_hour:start_hour+duration-1);
start_block = ceil(start_hour/4);
end_block   = floor((start_hour+duration-1)/4);
avg_window = avg4h(start_block:end_block);
x_raw = (0:length(raw_window)-1)/24;
x_avg = linspace(0,(length(raw_window)-1)/24,length(avg_window));
figure('Color','w','Position',[200 200 1200 500]);
plot(x_raw, raw_window, ...
    'Color',[0.6 0.6 0.6], ...
    'LineWidth',1); 
hold on;
plot(x_avg, avg_window, ...
    'Color',[0 0.4470 0.7410], ...
    'LineWidth',2.5);
xlabel('Time (days)','FontSize',20);
ylabel('Wind Speed (m/s)','FontSize',20);
set(gca,'FontSize',18);
legend('Hourly data (8760 points/year)', ...
       '4-hour averaged data (2190 points/year)', ...
       'Location','northwest', ...
       'FontSize',16);
grid on;
box on;
>> baseline_wind = mean(wind_month);
>> baseline_wind
baseline_wind =
  460.2345
>> months = {'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'};
wind = wind_month(:);
wave = wave400_MW(:);
figure('Color','w','Position',[200 200 1000 500]);
bar([wind wave], 'stacked');
hold on;
yline(baseline_wind, '--k', 'LineWidth', 2);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);
xlabel('Month', 'FontSize', 26);
ylabel('Average Power (MW)', 'FontSize', 26);
legend({'Wind','Wave','Baseline'}, ...
    'FontSize', 20, ...
    'Location', 'north');
grid on;
box on;
ylim([0 700]);
>> wind = wind_month(:);
wave = wave1MW_MW(:);
figure('Color','w','Position',[200 200 1000 500]);
bar([wind wave], 'stacked');
hold on;
yline(baseline_wind, '--k', 'LineWidth', 2);
set(gca, ...
    'XTick', 1:12, ...
    'XTickLabel', months, ...
    'FontSize', 22);
xlabel('Month', 'FontSize', 26);
ylabel('Average Power (MW)', 'FontSize', 26);
legend({'Wind','Wave','Baseline'}, ...
    'FontSize', 20, ...
    'Location', 'north');
grid on;
box on;
ylim([0 700]);
save('workspace_data.mat');
load('workspace_data.mat');
