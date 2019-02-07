I=imread('flower','jpg');
G=rgb2gray(I);
subplot(3,3,1);
imshow(G);
title('original');

h=ones(5,5)/25;
B=imfilter(G,h);
subplot(3,3,2);
imshow(B);
title('average');

C=medfilt2(G,'zeros');
subplot(3,3,3);
imshow(C);
title('median');

D=fspecial('laplacian');
im=imfilter(G,D);
L=G-im;
subplot(3,3,4);
imshow(L);


E=fspecial('sobel');
f=imfilter(G,E);
T=transpose(E);
S=f+T;
subplot(3,3,5);
imshow(S);






