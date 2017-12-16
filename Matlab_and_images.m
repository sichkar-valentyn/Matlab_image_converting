close all; clear all;

% Reading main information about images
Information_A = imfinfo('coins.png'); %Grayscale
Information_B = imfinfo('autumn.tif'); %True-Color
Information_C = imfinfo('canoe.tif'); %Indexed

%Converting Grayscale to Binary
Image_A = imread('coins.png');

Image_A_into_Binary = im2bw(Image_A, 0.5);
subplot(4,2,1), subimage(Image_A);
subplot(4,2,2), subimage(Image_A_into_Binary);

%Converting True-Color into Grayscale
Image_B = imread('autumn.tif');

Image_B_into_Gray = rgb2gray(Image_B);
subplot(4,2,3), subimage(Image_B);
subplot(4,2,4), subimage(Image_B_into_Gray);

%Converting Grayscale into Indexed using MATLAB Map
[Image_A_into_Indexed, map_A] = gray2ind(Image_A, 16);
subplot(4,2,5), subimage(Image_A);
subplot(4,2,6), subimage(Image_A_into_Indexed, jet);

%Converting Indexed into True-Color using MATLAB Map
[Image_C, map_C] = imread('canoe.tif');
Image_C_into_True_Color = ind2rgb(Image_C, jet);
subplot(4,2,7), subimage(Image_C, map_C);
subplot(4,2,8), subimage(Image_C_into_True_Color);

%Converting Grayscale into Indexed using 3x3 Map
map_3x3 = [0.5 0.1 0.1
           0.1 0.5 0.1
           0.1 0.1 0.5];
figure, subplot(1,2,1), subimage(Image_A);
X = grayslice(Image_A,3);
subplot(1,2,2), subimage(X, map_3x3);

%Converting Grayscale into Indexed using 3x4 Map
map_3x4 = [0.7 0.6 0.3
           0.4 0.7 0.4
           0.3 0.1 0.7
           0.3 0.9 0.7];
figure, subplot(1,2,1), subimage(Image_A);
X = grayslice(Image_A,3);
subplot(1,2,2), subimage(X, map_3x4);

%Converting Grayscale into Indexed using 3x5 Map
map_3x5 = [0.9 0.7 0.5
           0.5 0.4 0.7
           0.6 0.8 0.9
           0.4 0.3 0.8
           0.5 0.3 0.9];
figure, subplot(1,2,1), subimage(Image_A);
X = grayslice(Image_A,3);
subplot(1,2,2), subimage(X, map_3x5);
