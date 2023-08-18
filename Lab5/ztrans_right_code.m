clc;
close all;
clear all;

syms n;
x = [1 2 3 4 5];
l = length(x);

trans = 0;
z = sym('z');
for i=0:l-1
    trans=trans+x(i+1).*z^(-i);
end

disp('Z-transform of right side signal:');
disp(trans);

f=iztrans(trans);
disp('Inverse Z-transform of right side signal:');
disp(f);
