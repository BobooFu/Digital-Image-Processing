c=imread('cameraman.tif');
c1=imnoise(c,'salt & pepper',0.1);
c2=imnoise(c,'gaussian',0,0.02);

figure;imshow(c1);title("cameraman with noise c1")
 
edge_r=edge(c1,'Roberts');figure;
subplot(2,3,1);imshow(edge_r);title("roberts")
 
px=[-1 0 1; -1 0 1;-1 0 1];%x
c1x=filter2(px,c1);
subplot(2,3,2);imshow(c1x/255);title("prewitt x")
py=px';%y
c1y=filter2(py,c1);
subplot(2,3,3);imshow(c1y/255);title("prewitt y")
c1xy=sqrt(c1x.^2+c1y.^2);%xy
subplot(2,3,4);imshow(c1xy/255);title("prewitt xy")
 
log=fspecial('log',13,2);
ic1zlog=edge(c1,'zerocross',log);
subplot(2,3,5);imshow(ic1zlog);title("Marr zero crossing(log)")
 
edge_c=edge(c1,'canny');
subplot(2,3,6);imshow(edge_c);title("Canny detectors")

edge_s1=edge(c1,'sobel') ;
figure;imshow(edge_s1);title('sobel1');


figure;imshow(c2);title("cameraman with noise c2")

edge_r=edge(c2,'Roberts');figure;
subplot(2,3,1);imshow(edge_r);title("roberts")

px=[-1 0 1; -1 0 1;-1 0 1];%x
c2x=filter2(px,c2);
subplot(2,3,2);imshow(c2x/255);title("prewitt x")
py=px';%y
c2y=filter2(py,c2);
subplot(2,3,3);imshow(c2y/255);title("prewitt y")
c2xy=sqrt(c2x.^2+c2y.^2);%xy
subplot(2,3,4);imshow(c2xy/255);title("prewitt xy")

log=fspecial('log',13,2);
ic2zlog=edge(c2,'zerocross',log);
subplot(2,3,5);imshow(ic2zlog);title("Marr zero crossing(log)")

edge_c=edge(c2,'canny');
subplot(2,3,6);imshow(edge_c);title("Canny detectors")

edge_s2=edge(c2,'sobel') ;
figure;imshow(edge_s2);title('sobel2');
