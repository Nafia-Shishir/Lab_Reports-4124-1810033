## Experiment No: 05
## Experiment Date: 21.05.2023
### Experiment Name:
Experiment on finding the Z-transform and inverse Z-transform of a function.
### Theory:
A mathematical technique called the Z-transform is used to translate differential 
equations in the time domain into algebraic equations in the z-domain.
An extremely helpful tool in the analysis of a linear shift invariant (LSI) system is the Z-transform. 
Difference equations are used to model an LSI discrete time system. These time-domain difference 
equations are solved by first converting them into algebraic equations in the z-domain using the 
Z-transform, manipulating the algebraic equations in the z-domain, and then converting the results 
back into the time domain using the inverse Z-transform. The Z-transform formula 

X(z) = ∑ x[n]𝑍
−n

The method of determining the time domain signal x(n) from its Z-transform X(z) is known as the 
inverse Z-transform. The symbol for the inverse Z-transform is-
𝑥(𝑛) = 𝑍
−1
[X(z)]

### Required software: MATLAB
### code 1: Z-transform and inverse Z-transform of right-side signal:

```matlab
1. clc;
2. close all;
3. clear all;
4.
5. syms n;
6. x = [1 2 3 4 5];
7. l = length(x);
8.
9. trans = 0;
10. z = sym('z');
11. for i=0:l-1
12. trans=trans+x(i+1).*z^(-i);
13. end
14.
15. disp('Z-transform of right side signal:');
16. disp(trans);
17.
18. f=iztrans(trans);
19. disp('Inverse Z-transform of right side signal:');
20. disp(f);
```

### code 2: Z-transform and inverse Z-transform of left-side signal:
```matlab
1. clc;
2. close all;
3. clear all;
4.
5. syms n;
6. x = [1 2 3 4 5];
7. y = fliplr(x);
8. l = length(y);
9.
10. trans = 0;
11. z = sym('z');
12. for i=0:l-1
13. trans=trans+y(i+1).*z^(i);
14. end
15.
16. disp('Z-transform of left side signal:');
17. disp(trans);
18.
19. f=iztrans(trans);
20. disp('Inverse Z-transform of left side signal:');
21. disp(f);
```

### code 3: Z-transform and inverse Z-transform of non-causal signal:
```matlab
1. clc;
2. close all;
3. clear all;
4.
5. syms n;
6. x = [1 2 3 4 5 6 7];
7. n = length(x);
8.
9. k=input('Enter zero index:');
10. p=[];
11. for i=0:k
12. p(i+1)=x(i+1);
13. end
14.
15. h=fliplr(p);
16. u=length(h);
17.
18. trans = 0;
19. z = sym('z');
20. for i=0:u-1
21. trans=trans+h(i+1).*z^(i);
22. end
23.
24. q=[];
25. for i=0:(n-k-2)
26. q(i+1)= x(i+k+2);
27. end
28.
29. v=length(q);
30. for i=0:v-1
31. trans=trans+q(i+1).*z^(-(i+1));
32. end
33.
34. disp('Z-transform of non-causal signal:');
35. disp(trans);
36. f=iztrans(trans);
37. disp('Inverse Z-transform of non-causal signal:');
38. disp(f);
```

### Output 1
<img width="681" alt="ztrans_left_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/91ca4b2c-4658-4713-b6f4-aefc850e98b8">

### Output 2
<img width="835" alt="Ztrans_right_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/14154491-3fef-4ec8-951b-22809b339a27">

### Output 3
<img width="926" alt="ztrans_noncausal_output" src="https://github.com/Nafia-Shishir/Lab_Reports-4124-1810033/assets/68279387/65b27190-821c-4c1a-aad2-0548dd9bc154">

### Discussion: 
In the experiment, we have worked with Z-transform of three types of signals – right 
side signal, left side signal and both sided that is non-causal signal. In right side signal we found 
the power of z as negative and in case of left side signal those power of z was positive which was 
matched with our theoretical explanations also. For inverse z-transform, we used a function 
‘iztrans’ which worked correctly to find out the inverse of the Z-transform of the functions.
### Conclusion: 
All the code run successfully in the experiment without any type of error or 
complexities and we got the result as theoretical explanation.
