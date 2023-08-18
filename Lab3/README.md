## Experiment No: 03
## Experiment Date: 06.05.2023
### Experiment Name:
Calculation and representation of auto-correlation and cross-correlation using 
MATLAB.
### Theory:
The correlation between two functions is a measure of their similarity – if two functions 
are very similar, then they have a high correlation.
The correlation is similar to the convolution but simpler in a fundamental way: the functions in the 
correlation do not represent a signal and response as in the convolution, but rather just two 
functions that are usually suspected of having some measurable similarity. For example, a 
transmitted radar signal is expected to have some similarity to its corresponding time-delayed 
received signal.

Corr(p, q) = ∫ p(τ + t)q(τ )dτ

Autocorrelation is simply the correlation of a function with itself. The same mathematical 
techniques and numerical routines that apply to correlation.

### Required software: MATLAB
### code 1: Autocorrelation:
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. x=[1 2 3 4];
6. h=fliplr(x);
7.
8. C=x.'*h;
9.
10. k=length(x);
11. l=length(h);
12. n=k+l-1;
13.
14. for i=1:n
15. y(i)=0;
16. for j=1:k
17. s=i-j;
18. m=i-j+1;
19. if(s<k && m>0)
20. y(i)=y(i)+C(m,j);
21. end
22. end
23. end
24.
25. z=xcorr(x);
26. fprintf('The convoluted values using function:');
27. disp(z);
28.
29. fprintf('The convoluted values without functio:');
30. disp(y);
31.
32. subplot(3,1,1);
33. stem(x);
34. title('The input Signal x(n)');
35. subplot(3,1,2);
36. stem(z);
37. title('The auto-correlation using function');
38. subplot(3,1,3);
39. stem(y);
40. title('The auto-correlation using logic');
```

### code 2: Cross correlation:
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. x=[1 2 3 4];
6. w=[4 3 2 1];
7. h=fliplr(w);
8.
9. C=x.'*h;
10.
11. k=length(x);
12. l=length(h);
13. n=k+l-1;
14.
15. for i=1:n
16. y(i)=0;
17. for j=1:k
18. s=i-j;
19. m=i-j+1;
20. if(s<k && m>0)
21. y(i)=y(i)+C(m,j);
22. end
23. end
24. end
25.
26. z=xcorr(x,w);
27. fprintf('The convoluted values using function:');
28. disp(z);
29.
30. fprintf('The convoluted values without functio:');
31. disp(y);
32.
33. subplot(4,1,1);
34. stem(x);
35. title('The 1st input Signal x(n)');
36. subplot(4,1,2);
37. stem(w);
38. title('The 2nd input Signal w(n)');
39. subplot(4,1,3);
40. stem(z);
41. title('The cross-correlation using function');
42. subplot(4,1,4);
43. stem(y);
44. title('The cross-correlation using logic');
```

## Output 1
<img width="664" alt="auto_corr_output_1" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/76f2337e-c8c9-4f1f-b32e-880386bb1ddb">
<img width="420" alt="auto_corr_output_1" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/c887fc56-be65-453a-9ee1-54a826b10527">

### Output 2
<img width="663" alt="cross_correlation_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/ed994d08-1ec5-4b09-91ac-b9bdf307defa">
<img width="420" alt="cross_corr_output_1" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/e1db5788-4e1f-4435-af03-4c11c7397292">

### Discussion: 
In the experiment, we have worked with the correlation between two signals. At first, 
we observed the autocorrelation of a signal that is the correlation of a signal with its delayed 
version. Then, we observed the cross correlation of the two different signals. In both of the cases, 
the value or plot with the built in function and with using logic were identical.
### Conclusion: 
All the code and plots run successfully in the experiment without any type of error 
or complexities.
