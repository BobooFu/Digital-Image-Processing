A1=[0 0 0 0 0 0 0 0;
    0 0 0 1 1 1 1 0;
    0 0 0 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 0 0 0;
    0 1 1 1 1 0 0 0;
    0 0 0 0 0 0 0 0;];
B1=[0 1 0;
    1 1 1;
    0 1 0;];

erosion=imerode(A1,B1)  %腐蚀 黑吃白
dilation=imdilate(A1,B1) %膨胀 白吃黑

opening=imdilate(erosion,B1)    %开运算就是使用一个结构元素，对目标图像先腐蚀，再膨胀
closing=imerode(dilation,B1)     %闭运算就是使用一个结构元素，对目标图像先膨胀，再腐蚀

figure;subplot(1,2,1);imshow(A1);title('A1')
subplot(1,2,2);imshow(B1);title('B1')
figure;subplot(121);imshow(erosion);title('erosion1')
subplot(122);imshow(dilation);title('dilation1')
figure;subplot(121);imshow(opening);title('opening1')
subplot(122);imshow(closing);title('closing1')

A2=[0 0 0 0 0 0 0 0 ;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 0 0 1 1 0;
    0 1 1 0 0 1 1 0;
    0 1 1 1 1 1 1 0;
    0 1 1 1 1 1 1 0;
    0 0 0 0 0 0 0 0;];
B2=[1 1 1;
    1 1 1;
    1 1 1;];

erosion2=imerode(A2,B2)  %腐蚀 黑吃白
dilation2=imdilate(A2,B2) %膨胀 白吃黑

opening2=imdilate(erosion,B2)    %开运算就是使用一个结构元素，对目标图像先腐蚀，再膨胀
closing2=imerode(dilation,B2)     %闭运算就是使用一个结构元素，对目标图像先膨胀，再腐蚀

figure;subplot(1,2,1);imshow(A1);title('A2')
subplot(1,2,2);imshow(B2);title('B2')
figure;subplot(121);imshow(erosion2);title('erosion2')
subplot(122);imshow(dilation2);title('dilation2')
figure;subplot(121);imshow(opening2);title('opening2')
subplot(122);imshow(closing2);title('closing2')

A3=[0 0 0 0 0 0 0 0 ;
    0 0 0 0 0 1 1 0;
    0 1 1 1 0 1 1 0;
    0 1 1 1 0 1 1 0;
    0 1 1 1 0 1 1 0;
    0 1 1 1 0 0 0 0 ;
    0 1 1 1 0 0 0 0 ;
    0 0 0 0 0 0 0 0;];
B3=[1 0 0 ;
    0 0 0 ;
    0 0 1;];

erosion3=imerode(A3,B3)  %腐蚀 黑吃白
dilation3=imdilate(A3,B3) %膨胀 白吃黑

opening3=imdilate(erosion,B3)    %开运算就是使用一个结构元素，对目标图像先腐蚀，再膨胀
closing3=imerode(dilation,B3)     %闭运算就是使用一个结构元素，对目标图像先膨胀，再腐蚀

figure;subplot(1,2,1);imshow(A1);title('A3')
subplot(1,2,2);imshow(B2);title('B3')
figure;subplot(121);imshow(erosion3);title('erosion3')
subplot(122);imshow(dilation3);title('dilation3')
figure;subplot(121);imshow(opening3);title('opening3')
subplot(122);imshow(closing3);title('closing3')