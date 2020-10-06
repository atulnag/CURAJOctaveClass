%%
%    SECTION: Importing and exporting data
%      VIDEO: Convert US$ to Euros using up-to-date info
%
%%

% read data from a website
htmldata = urlread('https://free.currconv.com/api/v7/convert?q=USD_INR&compact=ultra&apiKey=3dd8bb9ce78a6deca425');

% the data is the entire html file;
% we need to find the right spot
startplace = strfind(htmldata,'"USD_INR"');

% then convert the conversion factor into a number
us2inr = sscanf(htmldata(startplace+10:end-1),'%g');

% now use that value to convert
numCurr = 50;
fprintf('US$%g = %g INR;\n ', numCurr, numCurr * us2inr);
fprintf('%g INR = US$%g.\n', numCurr, numCurr * (1/us2inr));

%%
