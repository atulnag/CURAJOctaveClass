%% 
%    Command statements
%    Hilbert matrix using for-loops
%
%%

% list dimensions
m = 5;

% initialize variables whenever possible!
hilmat   = zeros(m);
checkmat = 

% now for the loops:
for i=1:m
    for j=1:m
        
         % denominator
        den = i +j - 1
        
        % and invert to find this element
        hilmat(i, j) = 1/den;
        
        
        % bonus: checkerboard
        
        
    end
end

% let's see what they look like
figure(1), clf

subplot(121)
imagesc(hilmat)
axis square, title('Hilbert matrix')
set(gca,'xtick',[],'ytick',[])

% subplot(122)
% imagesc(checkmat)
% axis square, title('Checkerboard matrix')
% set(gca,'xtick',[],'ytick',[])

%%
