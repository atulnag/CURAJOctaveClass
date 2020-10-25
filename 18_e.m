%%
%    SECTION: Translate formulas into code
%      VIDEO: Functions involving the natural exponent
%
%%

%% Laplace distribution

% parameters
lambda = 3; % lambda
x = -5:.01:5;

% here's the function
f = 0.5 * lambda*exp(-lambda*abs(x));

plot(x,f);
sum(f);

%normalize to probability density
f = f./sum(f);  % scaling the function according to sum of all the values

% plot the probability density
figure(1), clf
subplot(211)
plot(x,f,'k','linew',3)
xlabel('x'), ylabel('p( f(x) )')
title('Probability density function')

% plot the cumulative density function
subplot(212)
plot(x,cumsum(f),'k','linew',3)
xlabel('x'), ylabel('c( f(x) )')
title('Cumulative density function')

%% log-normal distribution

% x-range and function parameters
% x = linspace(0,5,100);
x = linspace(0.0001,5,100);
m =  0;
s = .5;

% PDF of the equation, in two parts
part1 = 1./(x*s*sqrt(2*pi));  % denominator
part2 = exp(-(log(x) - m).^2 / (2*s^2)); % numerator

% combine the two parts
lndist = part1 .* part2;

plot(x,lndist);

% convert to probability density
lndist = lndist / sum(lndist); %normalizing

% make a plot of the PDF
figure(2), clf
subplot(211)
plot(x,lndist,'k','linew',2)
xlabel('x'), ylabel('p( f(x) )')
title('Probability density function')

% plot the CDF
subplot(212)
plot(x,cumsum(lndist),'k','linew',2)
xlabel('x'), ylabel('\Sigma p( f(x) )')
title('Cumulative density function')

%%
