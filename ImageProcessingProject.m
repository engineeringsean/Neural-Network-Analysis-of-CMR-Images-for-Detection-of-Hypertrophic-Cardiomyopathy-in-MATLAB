% Change file name to "Image 1 Sick.jpg", "Image 2 Sick.jpg", or 
% "Image 3 Normal.jpg" to view the results for each image

I0 = imread('Hypertrophy Processing Images\Image 3 Normal.jpg');

figure(1);
imshow(I0); title("Original Uncropped")

figure(2);
subplot(131); imshow(I0); title("Original Uncropped")

% Cropping image
I0 = imcrop(I0, [81 60 130 100]);

subplot(132); imshow(I0); title("Original Cropped")

% Interpolation
I_BC = imresize(I0, 16, "bicubic");

subplot(133); imshow(I_BC); title("Bicubic")

figure(3);

% Adding contrast
I_BC_hist = adapthisteq(I_BC);

subplot(121); imshow(I_BC); title("Bicubic")
subplot(122); imshow(I_BC_hist); title("AdaptHistEq")

% Edge Detection
I_BC_hist_canny = edge(I_BC_hist, 'canny');

figure(4);
subplot(121); imshow(I_BC_hist); title("AdaptHistEq")
subplot(122); imshow(I_BC_hist_canny, []); title("Canny")

% Displaying before and afters
figure(5);
subplot(141); imshow(I0); title("Original Cropped")
subplot(142); imshow(I_BC); title("Bicubic")
subplot(143); imshow(I_BC_hist); title("AdaptHistEq")
subplot(144); imshow(I_BC_hist_canny, []); title("Canny")


