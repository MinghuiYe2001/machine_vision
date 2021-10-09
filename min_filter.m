
function [ processed ] = min_filter( image, m )
    processed = image;
    [height,width] = size(image);
    f_size = (m-1)/2;
    for i= f_size+1:height-f_size
        for j= f_size+1:width-f_size
            point=image(i-f_size:i+f_size,j-f_size:j+f_size);
            point=point(:);
            processed(i,j) = min(point);
            
        end
    end
end