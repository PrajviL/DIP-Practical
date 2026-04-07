clc;
clear;
close all;

% Read grayscale image
img = imread('C:\Users\prajv\OneDrive\Pictures\Desktop\download.jpeg');

% Create 3x3 smoothing filter
h_smooth = fspecial('average',3);

% Apply smoothing
smooth_img = imfilter(img, h_smooth);

% Create sharpening filter
h_sharp = fspecial('laplacian');

% Apply sharpening
sharp_img = imfilter(img, h_sharp);

% Add edges to original image
final_sharp = img - sharp_img;

figure;
subplot(1,3,1)
imshow(img)
title('Original Image')
subplot(1,3,2)
imshow(smooth_img)
title('Smoothed Image')
subplot(1,3,3)
imshow(final_sharp)
title('Sharpened Image')
