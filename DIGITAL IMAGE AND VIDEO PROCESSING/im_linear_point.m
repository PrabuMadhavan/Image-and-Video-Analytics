pic=imread('apple.jpeg');
gray_pic=rgb2gray(pic);

[x,y]=size(gray_pic);

new_pic1=zeros(x,y);
new_pic2=zeros(x,y);
new_pic3=zeros(x,y);
new_pic4=zeros(x,y);
max=0;
for i=1:x
  for j=1:y
    if max<gray_pic(i,j)
      max=gray_pic(i,j);
    end
    
    new_pic1(i,j)=gray_pic(i,j)+50;
    new_pic2(i,j)=gray_pic(i,j)*1.5;
    new_pic3(i,j)=gray_pic(i,j)*0.8;
    new_pic4(i,j)=255-gray_pic(i,j);
  end
end

new_pic1=uint8(new_pic1);
new_pic2=uint8(new_pic2);
new_pic3=uint8(new_pic3);
new_pic4=uint8(new_pic4);

subplot(2,4,1)
imshow(gray_pic)
title('Original')

subplot(2,4,2)
imshow(new_pic1)
title('D+50')

subplot(2,4,3)
imshow(new_pic2)
title('D*1.5')

subplot(2,4,4)
imshow(new_pic3)
title('D*0.8')

subplot(2,4,5)
imshow(new_pic4)
title('D*(-1)+255')

subplot(2,4,6)
imhist(new_pic4)

subplot(2,4,7)
imhist(gray_pic)
% figure(1);
% imshow(gray_pic);
% 
% figure(2);
% set(figure(2),'name','D*D+50','Numbertitle','off');
% imshow(new_pic1);
% 
% figure(3);
% set(figure(3),'name','D*1.5','Numbertitle','off');
% imshow(new_pic2);
% 
% figure(4);
% set(figure(4),'name','D*0.8','Numbertitle','off');
% imshow(new_pic3);
% 
% figure(5);
% set(figure(5),'name','D*(-1)+255','Numbertitle','off');
% imshow(new_pic4);