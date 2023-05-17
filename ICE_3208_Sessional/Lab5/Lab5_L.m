clc;close all;
% Laplacian Filter(LF)
img=imread('trees.tif');
[r,c]=size(img);
subplot(131), imshow(img), title('Source image')
IMG=fftshift(fft2(img));
%Dispaly Fourier Transformed Image
IMG1=log(1+abs(IMG));
m=max(IMG1(:));
figure(2), imshow(im2uint8(IMG1/m)), title('Fourier Transformed Image');
[u,v]=meshgrid(-floor(c/2):floor((c-1)/2),-floor(r/2):floor((r-1)/2));
LF = -4*pi^2*(u.^2+v.^2) ;
figure(1), subplot(132), mesh(LF), title('Laplacian Filter')
LF_IMG=IMG.*LF;
lf_img=ifft2(LF_IMG);
figure(1), subplot(133), imshow(lf_img), title('Laplacian Filter')