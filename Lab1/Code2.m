clc;
clear all;
close all;

t=-10:1:20;
step1= t>=0 & t<=10;
step2= t>=5 & t<=15;

subplot(4,1,1);
stem(t,step1);
xlabel('Time');
ylabel('Amplitude');
title('Signal 1');

subplot(4,1,2);
stem(t,step2);
xlabel('Time');
ylabel('Amplitude');
title('Signal 2');

step3 = step1+step2
subplot(4,1,3);
stem(t,step3);
xlabel('Time');
ylabel('Amplitude');
title('Addition');

step4 = step1-step2
subplot(4,1,4);
stem(t,step4);
xlabel('Time');
ylabel('Amplitude');
title('Subtraction');
