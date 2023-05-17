img=imread('cameraman.tif');
[r,c]=size(img);
subplot(231), imshow(img), title('Source image')
IMG=fftshift(fft2(img));
[u,v]=meshgrid(-floor(c/2):floor((c-1)/2),-floor(r/2):floor((r-1)/2));
D=sqrt(u.^2+v.^2);D0=40;ILPF=(D<=D0);
subplot(232),mesh(double(ILPF)),title('ILPF')
ILPF_IMG=IMG.*ILPF;
ilpf_img=ifft2(ILPF_IMG);
subplot(233),imshow(mat2gray(abs(ilpf_img))), title('ILPF filtered image')
subplot(234),imshow(img),title('Source image')
D0=30;IHPF=(D>D0);
subplot(235),mesh(double(IHPF)), title('IHPF')
IHPF_IMG=IMG.*IHPF;
ihpf_img=ifft2(IHPF_IMG);
subplot(236),imshow(mat2gray(abs(ihpf_img))), title('IHPF filtered image');