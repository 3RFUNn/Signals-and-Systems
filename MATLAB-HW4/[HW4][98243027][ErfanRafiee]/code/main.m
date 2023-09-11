clc; clear; close all
%%%%%%%%%%% READ THE INPUT IMAGE %%%%%%%%%%%
img = imread('images/bengio.jpeg');

%%%%%%%%%%% DEFINE FILTERS %%%%%%%%%%%
horizontal_edge = [[-1,-1,-1];
                   [0,0,0];
                   [1,1,1]];
               
vertical_edge = [[-1,0,1];
                 [-1,0,1];
                 [-1,0,1]];
             
sharpening = [[0,-1,0];
              [-1,5,-1];
              [0,-1,0]];
          
sobel_horizontal = [[-1,-2,-1];
                    [0,0,0];
                    [1,2,1]];
sobel_vertical = [[-1,0,1];
                  [-2,0,2];
                  [-1,0,1]];
              
gaussian_5x5 = (1/273)*[[1,4,7,4,1];
                        [4,16,26,16,4];
                        [7,26,41,26,7];
                        [4,16,26,16,4];
                        [1,4,7,4,1]];
                    
averaging_7x7 = (1/49)*ones(7,7);
              
          
% concatening filters ot build the `filters` tensor

filters=gaussian_5x5;
%  filters = cat(3, sharpening, sobel_vertical,sobel_horizontal);
%%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
stride = 1;
padding = 'valid';

%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%

%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%
[y,p] = conv2D(img,filters,padding,stride);
% y1 = conv2(rgb2gray(img),horizontal_edge);
for k = 2:size(filters,3)+1
    subplot(1,size(filters,3)+1,k)
    imshow(y(:,:,k-1))
end
subplot(1,size(filters,3)+1,1)
imshow(img)