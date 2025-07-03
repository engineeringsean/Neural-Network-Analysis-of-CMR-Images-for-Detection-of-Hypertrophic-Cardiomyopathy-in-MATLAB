% This was just a script for processing all of the training images 
% to turn them into 3 dimensional images, usable by the googLeNet
% pretrained network

% identifying folders for each class of image
sickFolder = 'Hypertrophy Training Data\Sick';
normalFolder = 'Hypertrophy Training Data\Normal';

% pulling all image file paths
sickFilePath = fullfile(sickFolder, '*.jpg');
normalFilePath = fullfile(normalFolder, '*.jpg');

sickFiles = dir(sickFilePath);
normalFiles = dir(normalFilePath);

% looping through all sick files, turning them into rgb type images 
% with a third dimension, and saving them
for file = sickFiles'
    
    filePattern = fullfile(sickFolder, file.name);
    jpg = imread(filePattern);
    
    jpg = cat(3, jpg, jpg, jpg);
    imwrite(jpg, filePattern);

end

% looping through all sick files, turning them into rgb type images 
% with a third dimension, and saving them
for file = normalFiles'

    filePattern = fullfile(normalFolder, file.name);
    jpg = imread(filePattern);
    
    jpg = cat(3, jpg, jpg, jpg);
    imwrite(jpg, filePattern);

end