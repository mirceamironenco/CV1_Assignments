function [ imOut, Gd] = gaussDer( image, G, sigma )
%GAUSSDER Summary of this function goes here
%   Detailed explanation goes here

% Get kernel radius
kernel_radius = floor(size(G,2) / 2);

% Compute x
x = linspace(-kernel_radius, kernel_radius, size(G,2));

% Compute derivative
Gd = (-x ./ sigma) .* G;

% Convolve derivatie
imOut = conv2(image, Gd);

end

