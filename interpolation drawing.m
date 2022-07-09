clear;clc
% 读取excel中第一个Sheet内容
data=xlsread('temputurature.xlsx', 1,'A1:D16');
%a = data(:,1);
b = data(:,2);
c = data(:,3);
d = data(:,4);
x = data(:,1);

hold on

xi = 1.508:0.001:1.583;
%ai = interp1(x,a,xi,'spline');
bi = interp1(x,b,xi,'spline');
ci = interp1(x,c,xi,'spline');
di = interp1(x,d,xi,'spline');
%plot(xi,ai,'k');
plot(xi,bi,'r');
plot(xi,ci,'b');
plot(xi,di,'g');

% clear;clc
% % 读取excel中第三个Sheet内容
% data=xlsread('dianya.xlsx', 3,'A1:E11');
% a = data(:,1);
% b = data(:,2);
% c = data(:,3);
% d = data(:,4);
% x = data(:,5);
% 
% % hold on
% % plot(line1(2,:),line2(1,:),'k-s');
% % plot(line1(2,:),line2(1,:),'r-o');
% % plot(line1(2,:),line2(1,:),'b-^');
% % plot(line1(2,:),line2(1,:),'g-v');
% 
% xi = 0:1:10000;
% ai = interp1(x,a,xi,'spline');
% bi = interp1(x,b,xi,'spline');
% ci = interp1(x,c,xi,'spline');
% di = interp1(x,d,xi,'spline');
% plot(xi,ai,'k');
% plot(xi,bi,'r');
% plot(xi,ci,'b');
% plot(xi,di,'g');