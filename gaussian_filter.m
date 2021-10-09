
function [ processed ] = gaussian_filter( image, m ,sigma)
    processed = image;
    filter=ffilter( m ,sigma);
    filter=filter/sum(sum(filter));
    [height,width] = size(image);
    f_size = (m-1)/2;
    for i= f_size+1:height-f_size
        for j= f_size+1:width-f_size
            point=image(i-f_size:i+f_size,j-f_size:j+f_size);
            %points=point(:);
            value = sum(sum(filter.*double(point)));
            processed(i,j) = value;
        end
    end
    processed=uint8(processed);
end


function [ temp ] = ffilter( m ,sigma)
    temp=zeros(m,m);
    z = (m-1)/2;
    for i = 1:m
        a=i;
        for j = 1:m
            b=j;
            i = a-z-1;
            j = j-z-1;
            temp(a,b)= (exp(-(i^2+j^2)/(2*sigma*sigma)))/(2*pi*sigma*sigma);
        end
    end
end









