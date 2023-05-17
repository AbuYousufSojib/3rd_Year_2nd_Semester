clc;close all;
img=imread('E:\3-2\ICE-3207 DISP\ICE-3208 Sessional\Exm\\JWST.jpg');
subplot(1,2,1);
imshow(img);
title('Source Image')
subplot(1,2,2);
imhist(img);
title('Histogram');