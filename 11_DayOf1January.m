%%
%    SECTION: Command statements
%    Day of the week
%
%%

% "A" is the year
A = 2019;

% here's the formula
day1Jan = mod(1 + 5*mod(A-1, 4) + 4 * mod(A-1, 100) + 6 * mod(A-1, 400) , 7);

% match that with the correct string
switch (day1Jan)
  case 0
    day = 'Sunday';
  case 1
    day = 'Monday';
  case 2
    day = 'Tuesday';
  case 3
    day = 'Wednesday';
  case 4
    day = 'Thursday';
  case 5
    day = 'Friday';
  case 6
    day = 'Saturday'; 
end

% find this year
thisyear = clock;
thisyear = thisyear(1);

% print the information using appropriate grammar!
if A > thisyear
  fprintf('  1 January %g will be a %s\n',A,day);
else
  fprintf('  1 January %g was a %s\n',A,day);
end


% bonus: avoid the switch-case!
day = { 'Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday' }; 
disp([ '1 January ' num2str(A) ': ' day(day1Jan+1) ]);
%%
