%% 
%    SECTION: Vectors and variables
%    Working with text (characters and strings)
%
%%

wholetext = 'Hello my name is Atul and I like Blue.';

% separate into a cell array based on spaces
wordsep = regexp(wholetext,' ','split');

% remove any words with exactly 4 characters
numchars   = cellfun(@length, wordsep);
words2keep = numchars ~= 4;
wordsep2 = wordsep(words2keep);


% replace 'Atul' with your name and 'blue' with your favorite color
targname  = 'Atul';
targcolor = 'Blue';

% strfind(wholetext,'ello')
namestart = strfind(wholetext, targname);
colorstart = strfind(wholetext, targcolor);

nextext = [wholetext(1:namestart-1) 'Dhoni' ... 
           wholetext(namestart+length(targname):colorstart-1) 'green' ];

%%
