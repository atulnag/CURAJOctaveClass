%%
%    SECTION: Importing and exporting data
%      VIDEO: Import and export Excel-format data
%
%%

% list data folder and file
dataFolder = 'C:\Users\atulnag\Desktop\MATLAB_CURAJ\MyCode\03_ImportingData\';
dataFile   = 'sensordata.xlsx';

% pkg load io    -- in Octave

% import data file using xlsread
[numdata, txtdata, rawdata] = xlsread([dataFolder dataFile]);

% check sizes and outputs
whos


%% extract key data

% starting line
startline = find(strcmpi(rawdata(:,1), 'Start data'));

% get list of sensor IDs
sensorID = cell2mat(rawdata(startline+1:end -1,2));

% get list of time points
timepoints = cell2mat(rawdata(startline+1:end -1,4));

% now get all of the data
datatemp = cell2mat(rawdata(startline+1:end -1,6));

plot(sensorID,'o');
plot(timepoints,'o');
plot(datatemp,'o');


% a list of unique sensor numbers would also be useful
uchans = unique(sensorID);
utimes = unique(timepoints);

% initialize data matrix
datamat = nan( length(uchans),length(utimes) );

%% populate and plot

% populate one line at a time
for linei=1:length(sensorID)
    
    % line-specific channel and time point
    datamat(sensorID(linei),timepoints(linei)) = datatemp(linei);
end

% plot
figure(1), clf
plot(datamat','s-','markerfacecolor','w')


%% bonus: identify missing data

% find where datamat is nan
missingdata = find(isnan(datamat));


% loop over all missing time points
for i=1:length(missingdata)
    
    % convert index to subscript to find channel/time point
    [missChan, missTime] = ind2sub(size(datamat), missingdata(i))
    
    % print message
    % disp([ 'Channel ' num2str(missChan) ' timepoint ' num2str(missTime) ' has a missing value!' ])
    warning([ 'Channel ' num2str(missChan) ' timepoint ' num2str(missTime) ' has a missing value!' ])
end

%%
