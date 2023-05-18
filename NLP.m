clc;
close all;
a=imread('cameraman.tif');
subplot(2,2,1);
imshow(a);
title('Main Image');

b=255-a;
subplot(2,2,2);
imshow(b);
title('Main Image');