%% 
%    SECTION: Importing and exporting data
%    Import formatted text file
%
%%

% pointer to the file
fid = fopen('datafile.txt'); % r - read, w - write, a -append

%% read header

% ignore first line
IgnoreFirstLine = fgetl(fid);

% second line contains number of sensors
hdr_nSensors = regexp(fgetl(fid), '\t','split');
nSensors = str2double(hdr_nSensors(3));

% third line contains number of time points
hdr_ntimepoints = regexp(fgetl(fid), '\t','split');
nPnts = str2double(hdr_ntimepoints(3));

% move pointer ahead until "Start data"
toggle = true;
while toggle
    
    % get a line of data
    aline = fgetl(fid);
    
    % test whether the line begins with "Start", and flip toggle
    if strcmpi(aline(1:5),'start')
        toggle = false;
    end
end

%% read data

% initialize matrix
data = zeros(nSensors, nPnts);

% set toggle and begin while loop
toggle = true;
while toggle
    
    % get a line of tab-delimited data
    aline = fgetl(fid);
    
    % check whether we're at the end of the data
    if strcmpi(aline(1),'end data')
        toggle = false;
    end
    
    % put the data point into the matrix at the appropriate position
    aline = regexp(aline,'\t','split');
    data( str2double(aline(2)) ,str2double(aline(4))) = str2double(aline(6));
    
end

% now we can plot the data
figure(1), clf
plot(data','linew',2)

%%
