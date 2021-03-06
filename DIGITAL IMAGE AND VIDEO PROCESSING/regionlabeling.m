I = imread('coins.png');
subplot(1,3,1);
imshow(I);
title("Original Image")

bw = im2bw(I, graythresh(I));
bw = imfill(bw, 'holes');
subplot(1,3,2);
imshow(bw)
title('Thresholded, with holes filled')

L = bwlabel(bw);
subplot(1,3,3);
imshow(label2rgb(L, @jet, [.8 .8 .8]))
title('Label matrix')
%label2rgb function determines the color to assign to each object 
%based on the number of objects in the label
%colormap ->https://in.mathworks.com/help/matlab/colors-1.html


