clc;
clear all;
close all;

x=[1 2 3 4];
w=[4 3 2 1];
h=fliplr(w);

C=x.'*h;

k=length(x);
l=length(h);
n=k+l-1;

for i=1:n
    y(i)=0;
    for j=1:k
        s=i-j;
        m=i-j+1;
        if(s<k && m>0)  
            y(i)=y(i)+C(m,j);
        end
    end
end

z=xcorr(x,w);
fprintf('The convoluted values using function:');
disp(z);

fprintf('The convoluted values without functio:');
disp(y);

subplot(4,1,1);
stem(x);
title('The 1st input Signal x(n)');
subplot(4,1,2);
stem(w);
title('The 2nd input Signal w(n)');
subplot(4,1,3);
stem(z);
title('The cross-correlation using function');
subplot(4,1,4);
stem(y);
title('The cross-correlation using logic');