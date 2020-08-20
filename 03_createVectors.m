%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Vectors and variables
%      VIDEO: Create vectors and matrices
% Instructor: mikexcohen.com
%
%%

% make a row vector using square brackets
vectr = [1 2 3 4 2 3 1 0 -99];

% make a column vector using semicolons
vectc = [2; 4; 1; 0];

% make a column vector by transposing a row vector
vect = [1 2 3 4 5 6]'; % transpose using apostrophe (')
vect = transpose(vectr);

% create a 2x3 matrix
matr = [2 2 3; 3 3 4];

% or transpose a 3x2 matrix!
matr2 = [2 3; 1 4; 1 3];
matr3 = matr2';

% make a row vector of ones
onesvectors = [1 1 1 1 1];  % difficult if many ones
onesvectors = ones(1, 5);

% column vector of .25
matr4 = ones(4, 1) * 0.25;
matr5 = zeros(4, 1) + 0.25;

% matrix of random numbers
matr = randn(4,3);

% transpose that matrix and store as a new matrix
tmatr = matr';

%%
