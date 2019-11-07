fo=imread('flowers.tif');
fg=rgb2gray(fo);
f=im2uint8(fg(30:285,60:315));

t_sp=imnoise(f,'salt & pepper',0.05);
figure;imshow(t_sp);title("5%½·ÑÎÔëÉù")

average=fspecial('average',[7,7]);
t_sp_average=filter2(average,t_sp);
figure;imshow(t_sp_average/256);title("average filtering")

t_sp_median=medfilt2(t_sp,[5,5]);
figure;imshow(t_sp_median);title("5*5 median filtering ")

t_sp_outlier=outlier(t_sp,0.2);
figure;imshow(t_sp_outlier);title("outlier filtering d=0.2")

t_sp_outlier3=outlier(t_sp,0.5);
figure;imshow(t_sp_outlier3);title("outlier filtering d=0.5")

t_sp_outlier2=outlier(t_sp,0.8);
figure;imshow(t_sp_outlier2);title("outlier filtering d=0.8")

t_sp_median1=medfilt2(t_sp);
t_sp_median2=medfilt2(t_sp_median1);
figure;imshow(t_sp_median2);title("pseudo-median filtering")