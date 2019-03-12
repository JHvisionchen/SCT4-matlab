addpath('KCF');
addpath('strong');
addpath(genpath('PiotrDollarToolbox'));

% Inputs
base_path = '/media/cjh/datasets/tracking/OTB100/';
video = choose_video(base_path);
video_path=[base_path video];
show_visualization = 1; %visualization option (0: not visible, 1: visible)

% Load the image data
[img_files, pos, target_sz, ground_truth, video_path] = load_video_info(video_path);

% Tracking start
% Position : [left-top-x left-top-y right-bottom-x right-bottom-y]
% time : computational time in second (without time for image load & visualization)
[positions, time] = sct4(video_path, img_files, pos, target_sz, show_visualization);
