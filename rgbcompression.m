function [output]=rgbcompression(f,quality)
[F4]= jpegCompression(f,quality);
F4=uint8(F4);

F4=ycbcr2rgb(F4);
output=F4;
figure;
subplot(1,2,1),imshow(f);
subplot(1,2,2),imshow(F4);
