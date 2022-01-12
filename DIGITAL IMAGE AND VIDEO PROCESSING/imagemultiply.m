
I = imread('moon.tif');
I16 = uint16(I);

% Multiply the image by itself. 
% Note that immultiply converts the class of the image 
% from uint8 to uint16 before performing the multiplication to avoid truncating the results.
J = immultiply(I16,I16);
imshow(I)
figure
imshow(J)

%Scale each value of the image by a constant factor of 0.5.
%J = immultiply(I,0.5);


% https://in.mathworks.com/help/images/image-arithmetic.html