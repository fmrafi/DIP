I=imread('flower.jpg');
G=rgb2gray(I);
subplot(3,3,1);
imshow(G);
title('original');
v=ones(5,5)/25;
B=imfilter(G,v);
subplot(3,3,2);
imshow(B);
title('average');

C=medfilt2(G,'zeros');
subplot(3,3,3);
imshow(C);
title('median');

D=fspecial('laplacian');
im=imfilter(G,D);
im2=G-im;
subplot(3,3,4);
imshow(im2);
title('laplacian');






