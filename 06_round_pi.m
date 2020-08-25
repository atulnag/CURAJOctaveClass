%%
pi

round(pi)

round(pi*10)/10      % 1 significant digits
round(pi*100)/100    % 2 significant digits

%%
format long;

numdig = 6;

result = round(pi*10^numdig)/ (10^numdig);

disp(['pi to ' num2str(numdig) ' significant digits is ' num2str(result) ])
