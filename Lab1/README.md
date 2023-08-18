## Experiment No: 01
## Experiment Date: 20.03.2023
### Experiment Name:
Presentation of some signals using MATLAB.
1. Plot unit step, unit impulse and unit ramp signal using conditions.
2. Plot a discrete signal.
3. Plot two discrete signal, their addition and subtraction.
4. Plot two given continuous signal.
### Theory:
In the experiment, we worked with continuous and discrete signals. A signal that varies 
smoothly and continuously over time is referred to as a continuous-time signal. These signals 
represent a quantity of interest that is influenced by an independent variable, usually considered 
as time. A discrete-time signal is a sequence of values of interest, where the integer index can be 
thought of as a time index, and the values in the sequence represent some physical quantity of 
interest.

The step signal or step function is that type of standard signal which exists only for positive time 
and it is zero for negative time. If a step signal has unity magnitude, then it is known as unit step 
signal or unit step function. It is denoted by u(t).
The unit impulse signal has zero amplitude everywhere except at t = 0. At the origin (t = 0) the 
amplitude of impulse signal is infinity so that the area under the curve is unity. It is denoted by 
δ(t).
A ramp function or ramp signal is a type of standard signal which starts at 𝑡 = 0 and increases 
linearly with time. The unit ramp function has unit slop. It is denoted by r(t).
Any signal can be plotted using MATLAB. To plot any given signal the conditions should be 
applied to fulfill the given criteria.
### Required software: MATLAB
### code 1:  Unit step, unit impulse and unit ramp
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. t=-5:0.001:5;
6. step1= t>= 0;
7. step2= t==0;
8. step3= (t>=0).*t;
9.
10. subplot(3,1,1);
11. plot(t,step1);
12. xlabel('Time');
13. ylabel('Amplitude');
14. title('Unit step');
15. ylim([-0.1, 1.1]);
16.
17. subplot(3,1,2);
18. plot(t,step2);
19. xlabel('Time');
20. ylabel('Amplitude');
21. title('Unit Impluse');
22. ylim([-0.1, 1.1]);
23.
24. subplot(3,1,3);
25. plot(t,step3);
26. xlabel('Time');
27. ylabel('Amplitude');
28. title('Unit ramp');
29. ylim([-0.5, 5.5])
```
### Code 2: Discrete signal -
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. x=[2, 0, -2, 3, 1, 4, 6];
6. n=[1 2 4 5 6 8 3];
7. stem(n,x);
8. xlabel('n');
9. ylabel('x');
10. xlim([0, 9]);
11. ylim([-3, 7]);
```
### Code 3: Two different signals, their addition and subtraction
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. t=-10:1:20;
6. step1= t>=0 & t<=10;
7. step2= t>=5 & t<=15;
8.
9. subplot(4,1,1);
10. stem(t,step1);
11. xlabel('Time');
12. ylabel('Amplitude');
13. title('Signal 1');
14.
15. subplot(4,1,2);
16. stem(t,step2);
17. xlabel('Time');
18. ylabel('Amplitude');
19. title('Signal 2');
20.
21. step3 = step1+step2
22. subplot(4,1,3);
23. stem(t,step3);
24. xlabel('Time');
25. ylabel('Amplitude');
26. title('Addition');
27.
28. step4 = step1-step2
29. subplot(4,1,4);
30. stem(t,step4);
31. xlabel('Time');
32. ylabel('Amplitude');
33. title('Subtraction');
```
### Code 4: Presentation of two signals
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. t=0:1:7;
6. u = [ones(1,1).*1 ones(1,2).*2 ones(1,1).*4 ones(1,1).*4 ones(1,2).*2
ones(1,1)];
7. subplot(2,1,1);
8. plot(t,u);
9. xlabel('Time');
10. ylabel('Amplitude');
11. title('Signal 1');
12. xlim=([0, 8]);
13. ylim([1, 5]);
14.
15. t=0:1:6;
16. u1 = [zeros(1,1) ones(1,5) zeros(1,1)];
17. subplot(2,1,2);
18. plot(t,u1);
19. xlabel('Time');
20. ylabel('Amplitude');
21. title('Signal 2');
22. xlim=([-0, 7]);
23. ylim([0, 1.1]);
```


### Output 1
<img width="367" alt="Output1" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/9571d181-f4ab-4f1b-a5dd-a591fb729669">

### Output 2
<img width="391" alt="Output2" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/0a32b19b-c039-4374-9608-4888fe417463">

### Output 3
<img width="383" alt="Output3" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/c5aac0c8-abca-4ebd-955f-58742aeca7c2">

### Output 4
<img width="420" alt="Output4" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/6f662cf9-0203-4653-a69e-af744d9f912f">

### Discussion: 
Here in this experiment, firstly we worked with the unit step, unit impulse and unit 
ramp signals using conditions not the built in functions. For unit step before time zero all values 
are zero and after time zero all are one. For impulse only one value at zero, otherwise zero values. 
Discrete plot was done by using stem function.
We worked with two different signals, add then and subtract them using steps. For the last code to 
plot the two given signals we have used ones and zeros to create functions. In code 4, the first plot 
was not exact but close to the given one. The second one was similar to the given function.
### Conclusion: 
In the experiment, we have plotted different continuous and discrete functions. The 
codes gave correct output graphs which were same as the theoretical explanation and given 
functions
