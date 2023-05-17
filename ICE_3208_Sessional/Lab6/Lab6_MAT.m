clc;clear all;close all;
img=imread('pout.tif');
[r,c]=size(img);
img=im2double(img);
subplot(221),imshow(img),title('Source Image');
noisy_img=imnoise(img,'Gaussian');
subplot(222),imshow(noisy_img),title('Gaussian Noisy Image');
midf_img= ( ordfilt2(noisy_img,9,ones(3,3)) + ordfilt2(noisy_img,1,ones(3,3)) )./2 ;
subplot(223),imshow(midf_img),title('Midpoint Filtered Image');
d=25;
for i=1:r-2
    for j=1:c-2
        window = noisy_img(i:i+2,j:j+2);
        atmf_img(i,j)= trimmean( window(:),d );
    end
end
subplot(224),imshow(atmf_img),title('ATMF Filtered Image');