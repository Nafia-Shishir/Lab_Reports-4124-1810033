clc;
clear all;
close all;

t= 0:1:10;
f=10;
x=10*sin(2*f*pi*(t-4));
x1=10*sin(2*f*pi*t);
plot(xcorr(x,x1));

z=xcorr(x,x1);

[autocorr, lags] = xcorr(x,x1)

subplot(3,1,1);
plot(x);
title('Signal');
subplot(3,1,2);
plot(x1);
title('Delayed signal');
subplot(3,1,3);
plot(lags,autocorr);
title('Lags vs autocorrelation-value');


[~, index] = max(autocorr);

delay_sample = abs(lags(index))
Fs=1;
delay_seconds = delay_sample/Fs
