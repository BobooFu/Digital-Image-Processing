cmo=imread('twins.tif');
cm=rgb2gray(cmo)
cf=fftshift(fft2(cm)); %cf  Ƶ��
%%figure,fftshow(cf,'log')
%title("ԭͼ���Ƶ��")

[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2)
low=(z<20);  %lowΪ��ͨ�˲���
%cf=fftshift(fft2(c))
%fftshow(cf,'log')

cfl=cf.*low;
%figure,fftshow(cfl,'log')
%title("��ͨ�˲����Ƶ��")

cfli=ifft2(cfl);  %���˲���ͼ����Ƶ��
figure,fftshow(cfli,'abs')
title("D=20��ͨ�˲����ͼ�� ")
%%%%%%%%%%%%%%20�Կɱ�ʶ   ��С�Ͳ��ɱ�ʶ��


[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2)
high=(z>15);  %highΪ��ͨ�˲���

cfh=cf.*high;
%figure,fftshow(cfh,'log')
%title("��ͨ�˲����Ƶ��")

cfhi=ifft2(cfh);  %���˲���ͼ����Ƶ��
figure,fftshow(cfhi,'abs')
title("D=15 ��ͨ�˲����ͼ�� ")

%������˹��ͨ
bl=lbutter(high,15,1);
cfb1=cf.*bl;
figure,fftshow(cfb1,'log');
cfbli = ifft2(cfb1); 
figure, fftshow(cfbli, 'abs') ;

%������˹��ͨ
bh=hbutter(low,15,1); 
cfbh=cf.*bh; 
figure,fftshow(cfbh,'log')
cfbhi=ifft2(cfbh); 
figure,fftshow(cfbhi,'abs');


gaussian=mat2gray(fspecial('gaussian',256,10));
cg=cf.*gaussian;
%fftshow(cg,'log')
%title("��˹�˲���Ƶ��")
cgi=ifft2(cg);
figure,fftshow(cgi,'abs');
title("��˹�˲���ͼ��")
