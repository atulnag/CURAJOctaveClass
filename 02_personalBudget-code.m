%% 
%      SECTION: Getting started
%      Using MATLAB for a personal budget
%
%%

% monthly income (post-tax)
monthlyIncome = 2500;


% list monthly expenses
rent  = 1200;
utils =  300; % water, electricity, internet, etc.
car   =  250; % gas and insurance
food  =  300; % assuming 75/week
phone =   50; % gotta have unlimited downloads!
retirement = .1 * monthlyIncome ; % you should be saving/invest 10% of your income!


% total monthly expenditures
outflow = rent + utils + car + food + phone + retirement;

% amount left over for nonessential expenses
nonessentials = monthlyIncome - outflow;


% how much can you spend per day?
perday = nonessentials / 30
disp([ 'I can spend ' num2str(perday) ' extra each day.' ]) % concatenation


% what if you spend twice as much during the weekend as during the week?
% 
perweek = nonessentials/ (30/7);
inThirds = perweek / 3;
disp(['I can spend ' num2str(inThirds*2) ' during the weekends and ' num2str(inThirds/5) ' each week day'])

%%
