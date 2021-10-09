a=imread('lena256.bmp');
a1=imnoise(a,'gaussian',0.05);

g1=gaussian_filter(a1,5,1);
g2=average_filter(a1,5);
g3=median_filter(a1,5);
g4=max_filter(a1,5);
g5=min_filter(a1,5);

subplot(231),imshow(a1),subplot(232),imshow(g1),subplot(233),imshow(g2),
subplot(234),imshow(g3),subplot(235),imshow(g4),subplot(236),imshow(g5)











