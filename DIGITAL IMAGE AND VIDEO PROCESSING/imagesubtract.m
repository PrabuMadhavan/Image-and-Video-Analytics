I = imread('rice.png');
% Estimate the background.
background = imopen(I,strel('disk',15));
% creates a disk-shaped structuring element,  
% n specifies the number of line structuring elements used

K = imsubtract(I,background);
imshow(K)

% Subtract a constant value from the image.
% J = imsubtract(I,50);

% https://in.mathworks.com/help/images/image-arithmetic.html