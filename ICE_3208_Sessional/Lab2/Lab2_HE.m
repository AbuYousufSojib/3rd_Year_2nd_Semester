clc;close all;
img=imread('E:\3-2\ICE-3207 DISP\ICE-3208 Sessional\Exm\\JWST2.jpg');
subplot(2,2,1);imshow(img);
title('Source Image')
subplot(2,2,2);imhist(img);
title('Source Image Histogram')
hist_equ_image=histeq(img);
subplot(2,2,3);imshow(hist_equ_image);
title('Histogram Equalized Image');
subplot(2,2,4);imhist(hist_equ_image);
title('Equalized Image Histogram');