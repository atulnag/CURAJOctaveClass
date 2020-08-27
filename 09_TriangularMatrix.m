%% 
%    Command statements
%    Create an upper-triangular matrix
%
%%

% size of square matrix
m = 70;

% initialize matrix
outmat = zeros(m); % upper- triangular matrix
outmat2 = zeros(m); % full-matrix

% loop over rows and columns
for i=1:m
    for j=1:m
        
        % test whether row index is less than column index
        if i < j
          outmat(i,j) = 1.03^sqrt(i*j); % condition for upper-trinagular
        else     % i > j or i == j
          outmat2(i,j) = 1.03^m -1.03^sqrt(i*j);
        end
            
    end
end

outmat2 = outmat + outmat2; 

figure(1), clf
subplot(121)
imagesc(outmat)
axis square, title('Upper-triangular matrix')
set(gca,'xtick',[],'ytick',[],'clim',[0 1.03^m])

subplot(122)
imagesc(outmat2)
axis square, title('Full matrix')
set(gca,'xtick',[],'ytick',[],'clim',[0 1.03^m])
%%
