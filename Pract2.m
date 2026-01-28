clc;
clear;
close all;

img = imread('C:\Users\Student\Documents\MATLAB\download(1).jpg');

%Rotate Image
rot_img = imrotate(img, 45);

%Resize Image
res_img = imresize(img, 0.1);

%Flips Horizontally
flip_img = flip(img);

figure;

subplot(1,4,1)
imshow(img)
title('Original Image')

subplot(1,4,2)
imshow(rot_img)
title('Rotated')

subplot(1,4,3)
imshow(res_img)
title('Resize')
subplot(1,4,4)
imshow(flip_img)
title('Fliped')
