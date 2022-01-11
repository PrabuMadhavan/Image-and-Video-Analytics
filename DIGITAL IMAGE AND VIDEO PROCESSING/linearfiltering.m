I = imread('peppers.png');
imshow(I)
title('Original Image')

%Create a normalized, 5-by-5, averaging filter.
h = ones(5,5)/25;
I2 = imfilter(I,h);
figure
imshow(I2)
title('Filtered Image')

% This averaging filter contains equal weights, and causes the filtered image to look more blurry than the original.