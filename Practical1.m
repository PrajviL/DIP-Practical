clc;
clear;
close all;

%Read Image
img = imread('C:\Users\Student\Documents\MATLAB\download.jpg');

%Darkening Image
dark_img = img - 100;

%Brightening Image
bright_img = img - 100;

%Display Results
figure;

subplot(1,3,1);
imshow(img);
title('Original Image');

subplot(1,3,2);
imshow(dark_img);
title('Darkened Image');

subplot(1,3,3);
imshow(bright_img);
title('Brightened Image');
