clc;clear all;close all;
img=imread('moon.tif');
[r,c]=size(img);
img=im2double(img);
subplot(221);imshow(img);title('Source Image');
noisy_img=imnoise(img,'gaussian');
subplot(222);imshow(noisy_img);title('Gaussian Noisy Image');
Q=1.5;
for i=1:r-2
    for j=1:c-2
        window = noisy_img(i:i+2,j:j+2);
        hmf_img(i,j)= harmmean( window(:) );
        chmf_img(i,j)= sum( window(:).^(Q+1) ) ./ sum( window(:).^Q );
    end
end
subplot(223);imshow(hmf_img);title('HMF Filtered Image');
subplot(224);imshow(chmf_img);title('CHMF Filtered Image');