I = imread('cameraman.tif');

%Filter the image with a Gaussian filter 
%with standard deviation of 2.
Iblur = imgaussfilt(I,8);

montage({I,Iblur})
title('Original Image (Left) Vs. Gaussian Filtered Image (Right)')