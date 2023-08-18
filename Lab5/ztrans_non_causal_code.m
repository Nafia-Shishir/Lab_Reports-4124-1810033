clc;
close all;
clear all;

syms n;
x = [1 2 3 4 5 6 7];
n = length(x);

k=input('Enter zero index:');

p=[];
for i=0:k
    p(i+1)=x(i+1);
end

h=fliplr(p);
u=length(h);

trans = 0;
z = sym('z');
for i=0:u-1
    trans=trans+h(i+1).*z^(i);
end

q=[];
for i=0:(n-k-2)
    q(i+1)= x(i+k+2);
end

v=length(q);
for i=0:v-1
    trans=trans+q(i+1).*z^(-(i+1));
end

disp('Z-transform of non-causal signal:');
disp(trans);

f=iztrans(trans);
disp('Inverse Z-transform of non-causal signal:');
disp(f);
