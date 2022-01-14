% # Importing the image
I = imread("apple.jpeg"); %try gray
subplot(2, 3, 1),
imshow(I);
title("Original image");

% Dilation adds pixels to the boundaries of objects in an image, 
% while erosion removes pixels on object boundaries.

% Dilated Image
se = strel("line", 7, 7);
dilate = imdilate(I, se);
subplot(2, 3, 2),
imshow(dilate);
title("Dilated image");

% Eroded image
erode = imerode(I, se);
subplot(2, 3, 3),
imshow(erode);
title("Eroded image");

% Opened image
open = imopen(I, se);
subplot(2, 3, 4),
imshow(open);
title("Opened image");

% Closed image
close = imclose(I, se);
subplot(2, 3, 5),
imshow(close);
title("Closed image");
