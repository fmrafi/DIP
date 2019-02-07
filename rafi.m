clear all
close all
clc

img=imread('rafi','jpg');
subplot(3,3,1),imshow(img);
title('Original Image');

img_A=img(:,:,1);
subplot(3,3,2),imshow(img_A);
title('Red');

img_B=img(:,:,2);
subplot(3,3,3),imshow(img_B);
title('Blue');

img_C=img(:,:,1);
subplot(3,3,4),imshow(img_C);
title('Green');

I_gray=.21*img_A+.75*img_B+.07*img_C;
subplot(3,3,5),imshow(I_gray);
title('Gray');

rgb=imread('rafi','jpg');
tv=180;
new=gray;
new(gray>tv)=1;
new(gray<=tv)=0;
new=logical(new);
subplot(3,3,6),imshow(new);
title('bw');
