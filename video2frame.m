% video2frame


k     =   1;
v = VideoReader('E:\Other\GT_Maker_ADAS\Data\Camera_Front\GOPR0111.MP4');

while hasFrame(v)
    im = readFrame(v);

    info = sprintf('E:/Other/GT_Maker_ADAS/Data/Camera_Front/frame/frame%06d.jpg', k);
    %im = imresize(im(:,188:667,:), [256,256]);
    
    imwrite(im, info);
    k=k+1;
end

close(v_output);