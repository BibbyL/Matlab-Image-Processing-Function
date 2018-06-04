clc; clear; close all;

mkdir('./Output')

imgRoot = './Input/';
addpath(imgRoot);
imgs_names=dir([imgRoot '*' 'jpg']);
Size = [256, 256];
for ii=1:length(imgs_names)         
    I = imread(imgs_names(ii).name);
%     Gray_I = rgb2gray(I);
    [h, w, c] = size(I);
    W = max(h,w);
    H = min(h,w);
    result = I( :, ((W-H)/2+1):((W-H)/2+1)+H, :);
    result = imresize(result, Size); % size
    
    str = sprintf('./Output/%s', imgs_names(ii).name);
    imwrite(result, str); 
end
