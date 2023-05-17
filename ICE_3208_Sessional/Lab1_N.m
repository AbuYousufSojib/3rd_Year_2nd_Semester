clc;close all;
i1=imread('E:\3-2\ICE-3207 DISP\ICE-3208 Sessional\Exm\\JWST.jpg');
subplot(1,2,1);
imshow(i1);
title('Original image');
neg_img=255-i1;
subplot(1,2,2);
imshow(neg_img);
title('Negative Image');