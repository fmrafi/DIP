clear all
close all
clc

img=imread('rice.png');

%% Task 1: inverse the input image(img) and show  side by side
img_bw = im2bw(img);

subplot(3,3,1);
%imshow Iimg_bw);
imshowpair(img,img_bw,'montage');

%% Task 2 : Inverse img_bw and show  side by side

inverseGrayimage= 255- img_bw;
subplot(3,3,2);
imshowpair(img_bw,inverseGrayimage,'montage');


%% Task 3: Perform Log transformation on (img)
img=double(img);
s=0.6*log(1+img);
s=mat2gray(s);

subplot(3,3,3); imshowpair(img,s,'montage');

%% Task 4 : Perform Power Law Transformation (s=c*r^gamma)

s=0.6*imgpow();
s=mat2gray(s);

subplot(3,3,4); imshow(s);





