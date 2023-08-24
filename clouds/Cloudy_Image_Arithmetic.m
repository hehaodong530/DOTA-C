%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% codes for synthesize a cloudy image 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc,clear;
Threshold = 0;  % A scope that are greater than the minimum are additionally divided into the background area
Beta = 255;     % maximum gray-level value, 255 here
A = 0.95;       % atmospheic light

% The path of cloudy images 
cloudy_path = 'cloudy_images\';

% The path of original images
original_path = 'original_images\';

% The path of generated images
dst_path = 'generated_images\';

cloudy_list = dir([cloudy_path '*.png']);
cloudy_len = length(cloudy_list);

original_list = dir([original_path '*.png']);
original_len = length(original_list);

for k = 1:original_len

    if mod(k,cloudy_len)~=0
        I_cloudy = imread([cloudy_path cloudy_list(mod(k,cloudy_len)).name]);
    else
        I_cloudy = imread([cloudy_path cloudy_list(cloudy_len).name]);
    end

    I_cloud_free_land = imread([original_path original_list(k).name]);
    
    N = size(I_cloud_free_land,1);
    M = size(I_cloud_free_land,2);
    
    I_cloudy_scene = imresize(I_cloudy,[N M]);
    
    metrix_1 = ones(N,M);
    
    mysize=size(I_cloud_free_land);
    if numel(mysize)>2
        for c = 1:3  % every channal of a color image

            I_cs = double(I_cloudy_scene(:,:,c));
            I_cfl = double(I_cloud_free_land(:,:,c));

            Gamma = Beta;
            for i=1:N
                for j=1:M
                    if I_cs(i,j) < Gamma
                        Gamma = I_cs(i,j);
                    end
                end
            end
            Gamma = Gamma + Threshold;

            I_dc = I_cs - Gamma * metrix_1;

            sum_cs = 0;
            sum_dc = 0;
            for i = 1:N
                for j = 1:M
                    sum_dc = sum_dc + I_dc(i,j);
                    if I_cs(i,j) > Gamma
                        sum_cs = sum_cs + I_cs(i,j);
                    end
                end
            end
            Lambda = sum_cs / sum_dc; 

            I_ci = I_dc * Lambda;
            I_ci_reverse = Beta * metrix_1 - I_ci; 
            I_ol = I_ci_reverse / 255 .* I_cfl;
            I_aci = A * metrix_1 .* I_ci;
            I_scs = I_ol + I_aci; 

            I_scs_max = max(max(I_scs));
            [row_max col_max] = find(I_scs_max == I_scs);

            A_adjusted = (Beta - I_ol(row_max(1), col_max(1))) / I_ci(row_max(1), col_max(1));
            if A_adjusted < A
                A = A_adjusted;
            end

            I_aci = A * metrix_1 .* I_ci;
            I_scs = I_ol + I_aci;

            I_synthesized(:,:,c) = uint8(I_scs);

        end
    else
        I_cloudy_scene = rgb2gray(I_cloudy_scene);
        I_cs = double(I_cloudy_scene(:,:,1));
        I_cfl = double(I_cloud_free_land(:,:,1));

        Gamma = Beta;
        for i=1:N
            for j=1:M
                if I_cs(i,j) < Gamma
                    Gamma = I_cs(i,j);
                end
            end
        end
        Gamma = Gamma + Threshold;

        I_dc = I_cs - Gamma * metrix_1;

        sum_cs = 0;
        sum_dc = 0;
        for i = 1:N
            for j = 1:M
                sum_dc = sum_dc + I_dc(i,j);
                if I_cs(i,j) > Gamma
                    sum_cs = sum_cs + I_cs(i,j);
                end
            end
        end
        Lambda = sum_cs / sum_dc; 

        I_ci = I_dc * Lambda;
        I_ci_reverse = Beta * metrix_1 - I_ci; 
        I_ol = I_ci_reverse / 255 .* I_cfl;
        I_aci = A * metrix_1 .* I_ci;
        I_scs = I_ol + I_aci; 

        I_scs_max = max(max(I_scs));
        [row_max col_max] = find(I_scs_max == I_scs);

        A_adjusted = (Beta - I_ol(row_max(1), col_max(1))) / I_ci(row_max(1), col_max(1));
        if A_adjusted < A
            A = A_adjusted;
        end

        I_aci = A * metrix_1 .* I_ci;
        I_scs = I_ol + I_aci;

        I_synthesized(:,:,1) = uint8(I_scs);
    end

    imwrite(I_synthesized ,[dst_path original_list(k).name]);
    clear I_synthesized;

end
    

