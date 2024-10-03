clc, clearvars, close all
file = "adrien-olichon.jpg";
img_raw = imread(file);

%% Analysis
clc, clearvars -except img_raw, close all

[img_h, img_w, ~] = size(img_raw);

if img_h > img_w
        multiplier = round(img_h ./ img_w, 1);
        target_width = 480;
        target_height = round(target_width * multiplier);
    else 
        multiplier = img_w / img_h;
        target_height = 480;
        target_width = round(target_height * multiplier);
end

img_rgb = imresize(img_raw, [target_height, target_width]);

%%
img_hsv = rgb2hsv(img_rgb);
[H, S, V] = imsplit(img_hsv);

% Generating random points
n = 100000;
row_id = randi([1, target_height], n,1);
col_id = randi([1, target_width], n,1);

H1 = H(sub2ind([target_height, target_width], row_id, col_id));
S1 = S(sub2ind([target_height, target_width], row_id, col_id));
V1 = V(sub2ind([target_height, target_width], row_id, col_id));

% flatten
HSV_points = [H1,S1,V1];
flat_RGB = hsv2rgb(HSV_points);

%%plot
figure (1);
hold on
scatter(col_id,row_id,10,flat_RGB,'filled')
hold off
axis equal
axis off
set(gca, 'YDir', 'reverse')