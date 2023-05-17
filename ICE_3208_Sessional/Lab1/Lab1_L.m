clc;close all;
c=input('Please Input Constant c: ');
img=imread('E:\3-2\ICE-3207 DISP\ICE-3208 Sessional\Exm\\JWST2.jpg');
subplot(1,2,1); imshow(img);
title('Input Image');
img2=im2double(img);
log_trans=c*log(1+img2);
subplot(1,2,2); imshow(log_trans);
title('Log Transformed Image');