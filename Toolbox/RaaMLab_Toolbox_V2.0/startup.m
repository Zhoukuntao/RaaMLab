%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Setup the RaaMLab: a MATLAB toolbox for generating amino acid group-ings and RedAA modes
% Qi Dai, 20 Apri 2014, 
% @ingroup misc introspection
% @file
% @brief Adds all folders to the MATLAB path. This script needs to be run from the IRootLab root folder.

d = dir('*');
n = {d.name};
b = [d.isdir];
n(~b) = [];
n(strcmp(n, '.') | strcmp(n, '..') | strcmp(n, '.svn')) = [];

p = pwd();

for i = 1:numel(n)
    addtopath(fullfile(p, n{i}));
end;

% classmap_assert();
% colors_markers();
% setup_load();

% disp(get_credits);
disp(get_welcome);

% clear d n b p i;