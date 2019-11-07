t=imread('circles.tif');
[x,y]=meshgrid(1:256,1:256);
t2=double(t).*((x+y)/2+64)+x+y;
t3=uint8(255*mat2gray(t2));
figure;imshow(t3)

fun=inline('im2bw(x,graythresh(x))');
t4=blkproc(t3,[64,128],fun);
figure;imshow(t4)  %…Ë÷√≤Œ ˝
title("blkproc")

p11=t3(1:64,1:64);
p12=t3(1:64,65:128);
p13=t3(1:64,129:192);
p14=t3(1:64,193:256);
p21=t3(65:128,1:64);
p22=t3(65:128,65:128);
p23=t3(65:128,129:192);
p24=t3(65:128,193:256);
p31=t3(129:192,1:64);
p32=t3(129:192,65:128);
p33=t3(129:192,129:192);
p34=t3(129:192,193:256);
p41=t3(193:256,1:64);
p42=t3(193:256,65:128);
p43=t3(193:256,129:192);
p44=t3(193:256,193:256);
g11=im2bw(p11,graythresh(p11));
g12=im2bw(p12,graythresh(p12));
g13=im2bw(p13,graythresh(p13));
g14=im2bw(p14,graythresh(p14));
g21=im2bw(p21,graythresh(p21));
g22=im2bw(p22,graythresh(p22));
g23=im2bw(p23,graythresh(p23));
g24=im2bw(p24,graythresh(p24));
g31=im2bw(p31,graythresh(p31));
g32=im2bw(p32,graythresh(p32));
g33=im2bw(p33,graythresh(p33));
g34=im2bw(p34,graythresh(p34));
g41=im2bw(p41,graythresh(p41));
g42=im2bw(p42,graythresh(p42));
g43=im2bw(p43,graythresh(p43));
g44=im2bw(p44,graythresh(p44));

figure;imshow([g11 g12 g13 g14;g21 g22 g23 g24;g31 g32 g33 g34;g41 g42 g43 g44]);
title("adaptive thresholding");

