a=imread('cameraman.tif');
subplot(3,3,1);
imshow(a);title ('Original Image');
subplot(335);
imhist(a);title ('Histogram');
b=im2double(a);
s=(1*log(1+b))*256;
s1=uint8(s);
subplot(3,3,2);
imshow(s1);
title('c=1');

sp=(2*log(1+b))*256;
s2=uint8(sp);
subplot(3,3,3);
imshow(s2);
title('c=2');


sp2=(3*log(1+b))*256;
s3=uint8(sp2);
subplot(3,3,4);
imshow(s3);
title('c=3');