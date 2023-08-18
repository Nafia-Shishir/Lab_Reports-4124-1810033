clc;
clear all;
close all;

x=[2, 0, -2, 3, 1, 4, 6];
n=[1 2 4 5 6 8 3];
stem(n,x);
xlabel('n');
ylabel('x');
xlim([0, 9]);
ylim([-3, 7]);
