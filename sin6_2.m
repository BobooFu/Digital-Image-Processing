f=imread('cameraman.tif');
figure;imshow(f);title("cameraman original")

[x,y]=meshgrid(1:256,1:256);
p1=1+sin(x/3+y/5);
tp1=(double(f)/128+p1)/4;
tf1=fftshift(fft2(tp1));
figure;imshow(tp1);title("cameraman with sa")
figure;fftshow(tf1,'log');title("transform of cameraman with sa")
%z1=sqrt((x-129).^2+(y-129).^2);
%br1=(z1< 234|  z1>232);%
%restor1=tf.*br1;
tf1(137,:)=0;
tf1(121,:)=0;
tf1(:,143)=0;
tf1(:,115)=0;
tp11=ifft2(tf1);  %把滤波后图像变回频域
figure;fftshow(tf1,'log');title("transform of cameraman with sa by notch filtering ")
figure,fftshow(tp11,'abs');title("cameraman with sa restored by notch filtering")

%figure;imshow(tp1);title("cameraman with sa restored by band-reject filtering")

p2=1+sin(x/5+y/1.5);
tp2=(double(f)/128+p2)/4;
tf2=fftshift(fft2(tp2));
figure;imshow(tp2);title("cameraman with sb")
figure;fftshow(tf2,'log');title("transform of cameraman with sb")

tf2(156,:)=0;
tf2(102,:)=0;
tf2(:,137)=0;
tf2(:,121)=0;
tp22=ifft2(tf2);  %把滤波后图像变回频域
figure;fftshow(tf2,'log');title("transform of cameraman with sb by notch filtering ")
figure,fftshow(tp22,'abs');title("cameraman with sb restored by notch filtering")

p3=1+sin(x/6+y/6);
tp3=(double(f)/128+p3)/4;
tf3=fftshift(fft2(tp3));
figure;imshow(tp3);title("cameraman with sc")
figure;fftshow(tf3,'log');title("transform of cameraman with sc")

tf3(137,:)=0;
tf3(122,:)=0;
tf3(:,136)=0;
tf3(:,122)=0;
tp33=ifft2(tf3);  %把滤波后图像变回频域
figure;fftshow(tf3,'log');title("transform of cameraman with sc by notch filtering ")
figure,fftshow(tp33,'abs');title("cameraman with sc restored by notch filtering")