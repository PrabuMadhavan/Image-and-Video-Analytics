I=imread('pout.tif');
J=imtranslate(I,[50, 10.1],'FillValues',100);
imshow(J);