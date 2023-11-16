% startup DellR6525DAG
% place in /home/Documents/MATLAB

disp('Welcome to MATLAB2014 on DellR6525DAG');
addpath('/home/igor/Documents/GitHub/matlab_config/MATLAB2014');
addpath(genpath_exclude('/home/igor/Documents/GitHub',{'.git','neuroelf-matlab'}));
addpath('/home/igor/Documents/fieldtrip-20200604');
dbstop if error
warning off

ft_defaults
 
[ftver, ftpath] = ft_version;
rmpath(fullfile(ftpath, 'external', 'signal'))
rmpath(fullfile(ftpath, 'external', 'stats'))
rmpath(fullfile(ftpath, 'external', 'images'))

