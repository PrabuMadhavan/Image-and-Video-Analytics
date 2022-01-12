I = imread('cameraman.tif');
J = uint8(filter2(fspecial('gaussian'), I));
K = imabsdiff(I,J);
figure
imshow(K,[])

% https://in.mathworks.com/help/images/image-arithmetic.html