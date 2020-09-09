function [grd, img] = generateGradient(rgb,rgb_,n_steps)

if nargin < 3
    n_steps = 128;
end

%% Check input values:
if numel(rgb) ~= 3
    error('Color 1 is not a RGB vector.');
elseif max(rgb) > 1 && max(rgb) <= 255
    rgb = rgb./255;
elseif max(rgb) > 255 || min(rgb) < 0
    error('Color 1 is not a RGB vector.')
end

if numel(rgb_) ~= 3
    error('Color 2 is not a RGB vector.');
elseif max(rgb_) > 1 && max(rgb_) <= 255
    rgb_ = rgb_./255;
elseif max(rgb_) > 255 || min(rgb_) < 0
    error('Color 2 is not a RGB vector.')
end

%% Gradient steps for each channel:
r_ = (rgb_(1)-rgb(1))/(n_steps-1);
g_ = (rgb_(2)-rgb(2))/(n_steps-1);
b_ = (rgb_(3)-rgb(3))/(n_steps-1);

%% Initialize gradient matrix and image.
grd = zeros(n_steps,3);
r = zeros(32,n_steps);
g = zeros(32,n_steps);
b = zeros(32,n_steps);

%% Increase/reduce the value of intensity value for each channel and step.
for j = 1 : n_steps
    grd(j,1) = rgb(1)+r_*(j-1);
    grd(j,2) = rgb(2)+g_*(j-1);
    grd(j,3) = rgb(3)+b_*(j-1);
    
    r(:,j) = grd(j,1);
    g(:,j) = grd(j,2);
    b(:,j) = grd(j,3);
end

%% Merge RGB matrix.
img = cat(3,r,g,b);

end