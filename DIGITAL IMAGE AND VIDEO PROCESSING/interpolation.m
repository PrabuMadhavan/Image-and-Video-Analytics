%READ AN INPUT IMAGE
A=imread('cameraman.tif');
size(A)

% DEFINE THE RESAMPLE SIZE
Col = 600;
Row = 600;


%FIND THE RATIO OF THE NEW SIZE BY OLD SIZE
%1 and 2 are dimensions
rtR = Row/size(A,1);
rtC = Col/size(A,2);


%OBTAIN THE INTERPOLATED POSITIONS
 % CEIL rounds each element of X to the nearest integer greater than or equal to that element.
IR = ceil([1:(size(A,1)*rtR)]./(rtR));
IC = ceil([1:(size(A,2)*rtC)]./(rtC));



%ROW_WISE INTERPOLATION
B = A(:,IR);


%COLUMN-WISE INTERPOLATION
B = B(IC,:);



figure,subplot(121),imshow(A);title('BEFORE INTERPOLATION'); axis([0,1024,0,1024]);axis on;

subplot(122),imshow(B);title('AFTER INTERPOLATION');  axis([0,1024,0,1024]);axis on;
