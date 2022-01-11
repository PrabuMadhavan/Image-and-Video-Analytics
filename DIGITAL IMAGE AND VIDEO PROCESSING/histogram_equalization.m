I = imread('pout.tif');
figure
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imhist(I,64)

J = histeq(I);
figure
subplot(1,2,1)
imshow(J)
subplot(1,2,2)
imhist(J,64)