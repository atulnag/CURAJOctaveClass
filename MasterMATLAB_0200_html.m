%% 
%    SECTION: Vectors and variables
%    html table from MATLAB code
%
%%


% generate some random numbers and characters
N = 20; % 20 number/character pairs
numbers = randn(N,1); % randn returns numbers between 0 and 1
tmptext = char( 50 + randi(70,  N, 1)); % 51 to 121 ASCII characters


% clear the screen to facilitate copy/paste
clc

% html code for header
disp('<html>')
disp('<body>')

% html code for table
disp('<table>')

% loop over elements and print
for ri=1:N
    disp([ '<tr><td> ' num2str(numbers(ri)) ...
           ' </td><td> ' tmptext(ri) ' </td></tr>' ])
end

% close html
fprintf('</table>\n</body>\n</html>\n\n\n')

%%

