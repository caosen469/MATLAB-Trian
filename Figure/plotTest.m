%% Script for generating subplots of various 
% author 
% date

% clean start
clc
clear
close all
%%
% Enter the current file
fullpath = mfilename('fullpath');
[path,name, ext]=fileparts(fullpath);
addpath(path);
res =savepath;
cd(path);
% https://blog.csdn.net/liuxhCSDN/article/details/88696401

%%
% Create the data
x = linspace(0, 5, 6);
y= [1 2 4 8 16 2];

%%
% create subplot
subplot(2,3,1);
plot(x, y);
title('Plot');
xlabel('x');
ylabel('y');
grid on;

subplot(2,3,2);
scatter(x, y);
title('Scatter');
xlabel('x');
ylabel('y');
grid on;

subplot(2,3,3);
bar(x, y);
title('Bar');
xlabel('x');
ylabel('y');
grid on;

subplot(2,3,4);
loglog(x, y);
title('LogLog');
xlabel('x');
ylabel('y');
grid on;

subplot(2,3,5);
semilogx(x, y);
title('Semilogx');
xlabel('x');
ylabel('y');
grid on;

subplot(2,3,6);
semilogy(x, y);
title('Semilogy');
xlabel('x');
ylabel('y');
grid on;


figure;
subplot(2, 3, 1)
errorbar(x, y);
title('error bar');
xlabel('x');
ylabel('y');

% subplot(2, 3, 2)
% stemplot(x, y);
% title('Stemplot');
% xlabel('x');
% ylabel('y');
