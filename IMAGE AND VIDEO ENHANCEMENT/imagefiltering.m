grayImage = imread('cameraman.tif');
subplot(1,2,1);
imshow(grayImage);
title('Original Image', 'FontSize', 15);

windowSize = 2; % Whatever you want.
kernel = ones(windowSize, windowSize) / windowSize ^ 2;
filtimage= imfilter(grayImage, kernel, 'symmetric');

subplot(1,2,2);
imshow(filtimage);
title('Blurred Image', 'FontSize', 15);