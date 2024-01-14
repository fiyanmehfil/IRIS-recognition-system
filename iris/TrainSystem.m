function TrainSystem()
%%% Training the system
clc;

format longg;
format compact;

% Define a starting folder
start_path =  fullfile(matlabroot, 'F:\project\iris\');
% Ask user to confirm or change
startFolder =  uigetdir(start_path);
if startFolder == 0
    return;
end
%Get list of all subfolders.
subFolders = genpath(startFolder);

% Parse into a cell array.
remain =  subFolders;
folderList = {};

while true
    [subFolder, remain] = strtok(remain, ';');
    if isempty(subFolder)
        break;
    end
    folderList = [folderList subFolder];
end
numFolders = length(folderList);

%Process all image files in those folder.
for k = 1: numFolders
    % Get this folder and print it out.
    currentFolder = folderList{k};
    fprintf('Processing folder %s\n', currentFolder);
    
    file = sprintf('%s/*.jpg' , currentFolder);
    baseFileNames = dir(file);
    numberOfImageFiles = length(baseFileNames);
    fprintf(' number %s\n', numberOfImageFiles);
    % Now we have a list of all files in this folder.
    
    if numberOfImageFiles >= 1
        % Go through all those image files.
        for f = 1 : numberOfImageFiles
            fullFileName =fullfile(currentFolder, baseFileNames(f).name);
            fprintf(' Processing image file %s\n', fullFileName);
            [polar_array,noise_array] = createiristemplate (fullFileName);
            %FeatureExtraction (fullFileName, polar_array, noise_array,1);
        end
    else
                fprintf(' Folder %s has no image files in it.\n', currentFolder);
    end
end
        
    


