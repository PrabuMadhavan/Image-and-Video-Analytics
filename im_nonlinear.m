I = imread('tire.tif');
f = inline('max(x(:))');
I2 = nlfilter(I,[3 3],f);
subplot(1,2,1)
imshow(I)
title('Original')

subplot(1,2,2)
imshow(I2)
title('Non-Linear filtered')