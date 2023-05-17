clc;clear all;close all
img=imread('moon.tif');
subplot(131)
imshow(img)
title('Source Image')
noisy_img=imnoise(img,'gaussian');
subplot(132);
imshow(noisy_img);
title('Gaussian Noisy Image');
wiener_img=wiener2(noisy_img,[5 5]);
subplot(133)
imshow(wiener_img);
title('Wiener Filtered Image');