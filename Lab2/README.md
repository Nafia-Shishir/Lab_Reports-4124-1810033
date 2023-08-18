## Experiment No: 02
## Experiment Date: 30.04.2023
### Experiment Name:
Calculation and representation of linear convolution using MATLAB.
### Theory:
Convolution is a mathematical operation that combines two signals to produce a third 
signal. It can be seen as a way of applying a filter or a system to an input signal to get an output 
signal. It is used in many applications in digital world, such as- digital filter, data compressor, 
biomedical signal processing, speech and image processing etc.
Linear convolution is a mathematical operation done to calculate the output of any Linear-Time 
Invariant (LTI) system given its input and impulse response. It is applicable for both continuous 
and discrete-time signals.
We can represent Linear Convolution as y(n)=x(n)*h(n)
Here, y(n) is the output (also known as convolution sum). x(n) is the input signal, and h(n) is the 
impulse response of the LTI system.
In linear convolution, both the sequences (input and impulse response) may or may not be of equal 
sizes. That is, they may or may not have the same number of samples. Thus, the output, too, may 
or may not have the same number of samples as any of the inputs.
### Required software: MATLAB
### code
```matlab
1. clc;
2. clear all;
3. close all;
4.
5. x=[1 3 2 4];
6. h=[4 2 3 2];
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
24. fprintf('The convoluted values:');
25. display(y);
26.
27. subplot(3,1,1);
28. stem(x);
29. title('The input Signal x(n)');
30. subplot(3,1,2);
31. stem(h);
32. title('The Impulse Signal h(n)');
33. subplot(3,1,3);
34. stem(y);
35. title('The Convoluted Sum y(n)');
```

### Output 1
<img width="280" alt="output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/51b7e336-fadc-478a-81b9-dd1f8846f308">

### Output 2
<img width="420" alt="Output2" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/23d86060-7bad-49be-bfa4-cae1ec8536a0">

### Discussion: 
In the experiment, we have worked with the linear convolution of signals using the 
matrix multiplication of input signal with impulse response and summing the elements diagonally.
Then, we plotted the results using MATLAB.
### Conclusion: 
All the code and plots run successfully in the experiment without any type of error
or complexities.
