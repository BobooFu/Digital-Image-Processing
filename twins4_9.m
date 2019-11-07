cmo=imread('twins.tif');
cm=rgb2gray(cmo)
cf=fftshift(fft2(cm)); %cf  频谱
%%figure,fftshow(cf,'log')
%title("原图像的频谱")

[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2)
low=(z<20);  %low为低通滤波器
%cf=fftshift(fft2(c))
%fftshow(cf,'log')

cfl=cf.*low;
%figure,fftshow(cfl,'log')
%title("低通滤波后的频谱")

cfli=ifft2(cfl);  %把滤波后图像变回频域
figure,fftshow(cfli,'abs')
title("D=20低通滤波后的图像 ")
%%%%%%%%%%%%%%20仍可辨识   再小就不可辨识了


[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2)
high=(z>15);  %high为低通滤波器

cfh=cf.*high;
%figure,fftshow(cfh,'log')
%title("高通滤波后的频谱")

cfhi=ifft2(cfh);  %把滤波后图像变回频域
figure,fftshow(cfhi,'abs')
title("D=15 高通滤波后的图像 ")

%巴特沃斯低通
bl=lbutter(high,15,1);
cfb1=cf.*bl;
figure,fftshow(cfb1,'log');
cfbli = ifft2(cfb1); 
figure, fftshow(cfbli, 'abs') ;

%巴特沃斯高通
bh=hbutter(low,15,1); 
cfbh=cf.*bh; 
figure,fftshow(cfbh,'log')
cfbhi=ifft2(cfbh); 
figure,fftshow(cfbhi,'abs');


gaussian=mat2gray(fspecial('gaussian',256,10));
cg=cf.*gaussian;
%fftshow(cg,'log')
%title("高斯滤波器频谱")
cgi=ifft2(cg);
figure,fftshow(cgi,'abs');
title("高斯滤波后图像")
