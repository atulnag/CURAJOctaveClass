%% 
%    SECTION: Command statements
%    Random count-down timer (Poisson-like)
%
%%

% set threshold
thresh = exp(-10);

% Number of repetations
nRep = 100;

% initialize initial value
[currval,startval] = deal( 10 );

% decay process
decayvar = nan(nRep,50);  %matrix of nans

for repi=1:nRep
  
  % reset value
  currval = startval;
  %reset counter
  counter = 0;
  
  % stay in loop as long as needed
  while currval>thresh
    
    % increase counter
    counter = counter + 1;
    
    % update decay variable
    decayvar(repi,counter+1) = currval;
    
    % decrease target by random fraction ([0 1])
    currval = currval* rand^(1/2);
    
  end
end

% Average of decay of 100 iternations
decayvarAve = zeros(1, size(decayvar, 2));
for i=1:size(decayvar,2)
  decayvarAve(i) = mean(decayvar(isfinite(decayvar(:,i)), i));
end

% plot the results
figure(1), clf
plot(decayvarAve,'ks-','linew',2,'markersize',15,'markerfacecolor','w')
xlabel('Iterations'), ylabel('Value')
title([ num2str(counter) ' iterations until threshold' ])

%%
