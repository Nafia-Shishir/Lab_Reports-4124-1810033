clc;
clear all;
close all;

x=[1 3 2 4];
h=[4 2 3 2];

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
fprintf('The convoluted values:');
display(y);

subplot(3,1,1);
stem(x);
title('The input Signal x(n)');
subplot(3,1,2);
stem(h);
title('The Impulse Signal h(n)');
subplot(3,1,3);
stem(y);
title('The Convoluted Sum y(n)');