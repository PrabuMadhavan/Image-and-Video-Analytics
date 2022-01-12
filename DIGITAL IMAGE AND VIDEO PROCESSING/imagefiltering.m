I = imread('eight.tif');
figure
imshow(I)

% add salt and pepper noise to the image. 
% This type of noise consists of random pixels being set to black or white (the extremes of the data range).
J = imnoise(I,'salt & pepper',0.02);
figure
imshow(J)

% Filter the noisy image, J, with an averaging filter and display the results. 
% The example uses a 3-by-3 neighborhood.
Kaverage = filter2(fspecial('average',3),J)/255;
figure
imshow(Kaverage)

% Now use a median filter to filter the noisy image, J. 
% The example also uses a 3-by-3 neighborhood. 
% Display the two filtered images side-by-side for comparison. 
% Notice that medfilt2 does a better job of removing noise, with less blurring of edges of the coins.
Kmedian = medfilt2(J);
imshowpair(Kaverage,Kmedian,'montage')