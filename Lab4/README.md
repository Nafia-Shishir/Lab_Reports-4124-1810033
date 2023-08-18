## Experiment No: 04
## Experiment Date: 14.05.2023
### Experiment Name:
Experiment on finding delay of a function and plotting poles and zeros of the 
ztransform of a function.
### Theory:
 Delay of a function can be represented as the shifted version of any signal. If any signal 
is shifted right by 2 unit, then the delayed function will be represented by (t-2). We can find out 
delay of a function by using MATLAB using autocorrelation of the signal and delayed version of 
that signal. Where the value of the correlated array will be maximum, that index will be the delay 
of the function. It is the same for both continuous and discrete signal.
Poles and Zeros of a transfer function are the frequencies for which the value of the denominator 
and numerator of transfer function becomes infinite and zero respectively. The values of the poles 
and the zeros of a system determine whether the system is stable, and how well the system 
performs. Control systems, in the simplest sense, can be designed simply by assigning specific 
values to the poles and zeros of the system.
If we take a unit step signal, x(n)=u(n)

The ztransform will be, z[x(n) =
𝑧/
𝑧−1

Here the poles where z=1 and zeros where z=0.

### Required software: MATLAB
### code 1: Delay of discrete signal:
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. x=[0 0 1 2 3 4];
6. x1=[1 2 3 4];
7.
8. [autocorr, lags] = xcorr(x,x1)
9.
10. subplot(3,1,1);
11. stem(x);
12. title('Signal');
13. subplot(3,1,2);
14. stem(x1);
15. title('Delayed signal');
16. subplot(3,1,3);
17. stem(lags,autocorr);
18. title('Lags vs autocorrelation-value');
19.
20.
21. [~, index] = max(autocorr);
22.
23. delay_sample = abs(lags(index))
24. Fs=1;
25. delay_seconds = delay_sample/Fs
```

### code 2: Delay of continuous signal
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. t= 0:1:10;
6. f=10;
7. x=10*sin(2*f*pi*(t-4));
8. x1=10*sin(2*f*pi*t);
9. plot(xcorr(x,x1));
10.
11. z=xcorr(x,x1);
12.
13. [autocorr, lags] = xcorr(x,x1)
14.
15. subplot(3,1,1);
16. plot(x);
17. title('Signal');
18. subplot(3,1,2);
19. plot(x1);
20. title('Delayed signal');
21. subplot(3,1,3);
22. plot(lags,autocorr);
23. title('Lags vs autocorrelation-value');
24.
25.
26. [~, index] = max(autocorr);
27.
28. delay_sample = abs(lags(index))
29. Fs=1;
30. delay_seconds = delay_sample/Fs
```

### code 3: Plotting poles and zeros
```matlab
clc;
2. clear all;
3. close all;
4.
5. %function1 = unit step signal
6. %ztransform = z/(z-1);
7. a=[1];
8. b=[1 -1];
9.
10. zplane(a,b);
11. grid
```

### Output 1
<img width="420" alt="delay_discrete_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/9c63cfe6-12fb-4585-8fa0-5127ae29fa2c">

### Output 2
<img width="420" alt="delay_continuous_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/ab775473-47df-41d3-b84b-872786e5baea">

### Output 3
<img width="420" alt="Poles_Zeros_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/0aed3db4-d262-426d-bc5b-3857a9e664f8">

### Discussion: 
In the experiment, we have worked with delay of a signal. Here delay is found out by 
using autocorrelation. Here the value of plot of lags vs autocorr_value in which the value is highest 
is the delay of the signal. We find out delay for both the discrete and continuous signal. Then, we 
worked with the poles and zeros of the ztransform of a signal. Here O denotes zeros and X denotes 
poles of the step function with which we have worked.
### Conclusion: 
All the code and plots run successfully in the experiment without any type of error 
or complexities.
