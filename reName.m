clc; clear; close all;
scale = {'90';
% imgRoot_info = sprintf('./Results/%s/', scale);

imgRoot = 'E:\MyPaper\Context-Adaptive\Results_With_Mask\PICK\Result_Journal_Final_without_mask\Proposed_Journal\';

addpath(imgRoot);
imgs_names=dir([imgRoot '*' 'jpg']);

for ii=1:length(imgs_names)

    I = imread(imgs_names(ii).name);
    str = sprintf('./Results/PC_%s/%s_SDMSR_PR=%s_%s).jpg', scale ,imgs_names(ii).name(1,1:5), imgs_names(ii).name(1,11:17), imgs_names(ii).name(1,19:40) );        
    imwrite(I, str);    
  
   
end