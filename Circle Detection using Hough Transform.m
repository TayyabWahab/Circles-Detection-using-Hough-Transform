close all
clear all
clc
I = imread('circles 1.jpg');
gray = im2double(rgb2gray(I));
filter = imgaussfilt(gray,5);
e = edge(filter, 'canny');
se = strel('disk',3);
dilate = imdilate(e,se);
figure
imshow(dilate)
%[centers,radii] = imfindcircles(dilate,[20 120],'ObjectPolarity','bright','Sensitivity',0.75,'EdgeThreshold',0.06);
[centers,radii] = imfindcircles(dilate,[20 100],'ObjectPolarity','bright','Sensitivity',0.75,'Method','twostage');
figure
imshow(I)
h = viscircles(centers,radii);









