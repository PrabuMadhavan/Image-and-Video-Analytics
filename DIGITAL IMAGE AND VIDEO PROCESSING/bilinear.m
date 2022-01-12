im = imread('onion.png');
out = bilinearInterpolation(im, [270 396]);
figure;
imshow(im);
figure;
imshow(out);