A = imread('concordaerial.png');
Ref = imread('concordorthophoto.png');
size(Ref)
B = imhistmatch(A,Ref);

subplot(1,3,1)
imshow(A)
title('RGB Image with Color Cast')

subplot(1,3,2)
imshow(Ref)
title('Reference Grayscale Image')

subplot(1,3,3)
imshow(B)
title('Histogram Matched RGB Image')