clc;
close all;
clear;
a=imread('peppers.png');
subplot(2,2,1);
imshow(a);
title('original Image');
rates=[4 16 64];
For i =1:3
    S=a(1:rates(i):end,1:rates(i):end,:);
    subplot(2,2,i+1);
    imshow(S);
    title(['Sampled at rate',num2str(rates(i))]);
endclc;
close all;
clear all;
filename='Desert.jpg';
if~isfile(filename)
    filename='peppers.png';
end
a=imread(filename);
subplot(2,2,1);
imshow(a);title('original Image')
subplot(2,2,1);
imshow(a);
title('original Image');
gray=rgb2gray(a);
subsample=16;
S=gray(1:subsample:end,1:subsample:end);
subplot(2,2,2);
imshow(S);
title('Sampled Grayscale Image');
thresh=multithresh(S,2);
S1=imquantize(S,thresh);
rgb=label2rgb(S1);
subplot(2,2,4);
imshow(rgb);
title('Quantized Image(3Levels)');