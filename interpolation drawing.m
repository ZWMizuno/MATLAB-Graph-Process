clear;clc

%% 读取数据
%subplot(1,3,1);
% 读取excel中第一个Sheet内容
data=xlsread('auxi_exp1.xlsx', 1,'C16:K22'); %+7
%a = data(:,1);
Q = data(:,3);
H = data(:,6);
Ng = data(:,8);
mu = data(:,9);
%rectify
H = 10*H;

%% 插值拟合(含多项式拟合)
xi = Q(1):0.1:Q(end);
Hi = interp1(Q,H,xi,'spline');%插值
p = polyfit(Q,Ng,1);%多项式拟合，ｐ为多项式系数
Ngi = polyval(p,xi);%利用多项式作图
mui = interp1(Q,mu,xi,'spline');

%% 多项式拟合
% p1 = polyfit(Q,Ng,1);%多项式拟合，ｐ为多项式系数
% Ngi = polyval(p1,xi);%利用多项式作图
% p2 = polyfit(Q,mu,2);%拟合次数为２
% mui = polyval(p2,xi);

%% plot
figure(1);
hold on
plot(xi,Hi,'r','LineWidth',2);
plot(xi,Ngi,'b','LineWidth',2);
plot(xi,mui,'g','LineWidth',2);

%% labeling
a = xlabel('Q(m^3/h)');
b = ylabel('H(m)');
c = title('f = 40Hz');
d  = legend('H-Q','Ng-Q','mu-Q');
set(a,'unit','normalized','Position',[1.03,-0.03],'fontsize',15,'fontname','Times New Roman');
set(b,'unit','normalized','Position',[-0.1,1],'fontsize',15,'fontname','Times New Roman');
set(c,'fontsize',15,'fontname','Times New Roman');
set(d,'unit','normalized','Position',[0.2,0.8,0.1,0.1],'fontsize',10);
grid on
set(gca,'LineWidth',2) %图窗所有线条粗细设置为2

%% section2
data=xlsread('auxi_exp1.xlsx', 2,'A2:F5');
%a = data(:,1);
f = data(:,1);
Q1 = data(:,5);
H1 = data(:,6);
%rectify
H1 = 10*H1;

figure(2);
xi = Q1(1):-0.1:Q1(end);
p = polyfit(Q1,H1,2);%多项式拟合，ｐ为多项式系数
Hi = polyval(p,xi);%利用多项式作图
plot(xi,Hi,'r','LineWidth',2);

a = xlabel('Q(m^3/h)');
b = ylabel('H(m)');
c = title('交点');
d  = legend('H-Q');
set(a,'unit','normalized','Position',[1.03,-0.03],'fontsize',15,'fontname','Times New Roman');
set(b,'unit','normalized','Position',[-0.1,1],'fontsize',15,'fontname','Times New Roman');
set(c,'fontsize',15,'fontname','regular scriptegular');
set(d,'unit','normalized','Position',[0.2,0.8,0.1,0.1],'fontsize',10);
grid on
set(gca,'LineWidth',2) %图窗所有线条粗细设置为2
