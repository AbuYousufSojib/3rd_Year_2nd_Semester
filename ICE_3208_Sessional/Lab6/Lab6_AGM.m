clc;close all;clear all;
img=imread('trees.tif');
[r,c]=size(img);
img=im2double(img);
subplot(221);imshow(img);title('Source Image');
noisy_img=imnoise(img,'gaussian');
subplot(222);imshow(noisy_img);title('Gaussian Noisy Image');
for i=1:r-2
    for j=1:c-2
        window = noisy_img(i:i+2,j:j+2);
        amf_img(i,j)= mean( window(:) );
        gmf_img(i,j)= geomean( window(:) );
    end
end
subplot(223);imshow(amf_img);title('AMF Filtered Image');
subplot(224);imshow(gmf_img);title('GMF Filtered Image');