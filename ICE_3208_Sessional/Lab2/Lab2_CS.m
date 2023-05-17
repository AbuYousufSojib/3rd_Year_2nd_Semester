clc;close all;
img=imread('E:\3-2\ICE-3207 DISP\ICE-3208 Sessional\Exm\\JWST.jpg');
subplot(2,2,1);imshow(img);
title('Source Image')
subplot(2,2,2);imhist(img);
title('Source Image Histogram')
stretched_image=imadjust(img,[0.3, 0.6], [0.0, 1.0]);
subplot(2,2,3);imshow(stretched_image);
title('Constrast Stretched Image');
subplot(2,2,4);imhist(stretched_image);
title('Constrast Stretched Image Histogram');