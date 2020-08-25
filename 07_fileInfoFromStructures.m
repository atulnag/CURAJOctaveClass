%% 
%    SECTION: Vectors and variables
%      VIDEO: File/folder information using structures
%
%%

% get information about all files/folders
everything = dir;

% names of all folders
foldernames = { everything([everything.isdir]).name };

% filename lengths
filename_lengths = cellfun(@length, foldernames);


% use selective query to extract filenames with *variable*
somethings = dir( 'round*' );

%%
