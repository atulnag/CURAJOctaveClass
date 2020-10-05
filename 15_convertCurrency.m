%%
%    SECTION: Importing and exporting data
%      VIDEO: Convert US$ to Euros using up-to-date info
%
%%

% read data from a website
htmldata = urlread('https://transferwise.com/gb/currency-converter/usd-to-eur-rate?amount=1');

% the data is the entire html file;
% we need to find the right spot
startplace = strfind(htmldata,'data-top-currencies="USD-EUR"');

% then convert the conversion factor into a number
us2euro = sscanf(htmldata(startplace+30:startplace+36),'%g') 

% now use that value to convert
numCurr = 50;
fprintf('US$%g = %g Euros;\n',numCurr, numCurr * us2euro);
fprintf('%g Euros = US$%g.\n',numCurr,numCurr*(1/us2euro));
%% note

% urlread cannot import from sites that have certain security features, e.g.:
urlread('https://atulnag.github.io/CURAJOctaveClass/');

% you could use a system url read, e.g., curl on linux

%%
