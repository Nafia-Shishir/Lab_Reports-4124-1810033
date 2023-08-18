clc;
clear all;
close all;

x=[0 0 0 1 2 3 4];
x1=[1 2 3 4];

[autocorr, lags] = xcorr(x,x1)

subplot(3,1,1);
stem(x);
title('Signal');
subplot(3,1,2);
stem(x1);
title('Delayed signal');
subplot(3,1,3);
stem(lags,autocorr);
title('Lags vs autocorrelation-value');


[~, index] = max(autocorr);

delay_sample = abs(lags(index))
Fs=1;
delay_seconds = delay_sample/Fs

