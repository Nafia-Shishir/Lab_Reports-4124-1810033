clc;
clear all;
close all;

t=-5:0.001:5;
step1= t>= 0;
step2= t==0;
step3= (t>=0).*t;

subplot(3,1,1);
plot(t,step1);
xlabel('Time');
ylabel('Amplitude');
title('Unit step');
ylim([-0.1, 1.1]);

subplot(3,1,2);
plot(t,step2);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impluse');
ylim([-0.1, 1.1]);

subplot(3,1,3);
plot(t,step3);
xlabel('Time');
ylabel('Amplitude');
title('Unit ramp');
ylim([-0.5, 5.5]);

