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

erosion=imerode(A1,B1)  %��ʴ �ڳ԰�
dilation=imdilate(A1,B1) %���� �׳Ժ�

opening=imdilate(erosion,B1)    %���������ʹ��һ���ṹԪ�أ���Ŀ��ͼ���ȸ�ʴ��������
closing=imerode(dilation,B1)     %���������ʹ��һ���ṹԪ�أ���Ŀ��ͼ�������ͣ��ٸ�ʴ

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

erosion2=imerode(A2,B2)  %��ʴ �ڳ԰�
dilation2=imdilate(A2,B2) %���� �׳Ժ�

opening2=imdilate(erosion,B2)    %���������ʹ��һ���ṹԪ�أ���Ŀ��ͼ���ȸ�ʴ��������
closing2=imerode(dilation,B2)     %���������ʹ��һ���ṹԪ�أ���Ŀ��ͼ�������ͣ��ٸ�ʴ

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

erosion3=imerode(A3,B3)  %��ʴ �ڳ԰�
dilation3=imdilate(A3,B3) %���� �׳Ժ�

opening3=imdilate(erosion,B3)    %���������ʹ��һ���ṹԪ�أ���Ŀ��ͼ���ȸ�ʴ��������
closing3=imerode(dilation,B3)     %���������ʹ��һ���ṹԪ�أ���Ŀ��ͼ�������ͣ��ٸ�ʴ

figure;subplot(1,2,1);imshow(A1);title('A3')
subplot(1,2,2);imshow(B2);title('B3')
figure;subplot(121);imshow(erosion3);title('erosion3')
subplot(122);imshow(dilation3);title('dilation3')
figure;subplot(121);imshow(opening3);title('opening3')
subplot(122);imshow(closing3);title('closing3')