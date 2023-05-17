img=imread('moon.tif');
[r,c]=size(img);
subplot(331);imshow(img);title('Source image');
[u,v]=meshgrid(-floor(c/2):floor((c-1)/2),-floor(r/2):floor((r-1)/2));
sin_noise= 15*sin( 2*pi*1/10*u + 2*pi*1/10*v);
noisy_img=double(img)+sin_noise;
NOISY_IMG=fftshift(fft2(noisy_img));
subplot(332);imshow(noisy_img,[]);title('Sinusoidal noisy image')
subplot(339);imshow(mat2gray(log(1+abs(NOISY_IMG))));title('FFT of noisy image');
D=sqrt(u.^2+v.^2);
D0=50;
W=40;
IBRF= ( D<(D0-W/2) | D>(D0+W/2) );
subplot(333);mesh(IBRF);title('IBRF');
IBRF_IMG=NOISY_IMG.*IBRF;
ibrf_img=ifft2(IBRF_IMG);
subplot(335);imshow(mat2gray(abs(ibrf_img)));title('IBRF filtered image');
IBPF= 1 - IBRF ;
subplot(337);mesh(IBPF);title('IBPF')
IBPF_IMG=NOISY_IMG.*IBPF;
ibpf_img=ifft2(IBPF_IMG);
subplot(338);imshow(mat2gray(abs(ibpf_img)));title('IBPF filtered image');