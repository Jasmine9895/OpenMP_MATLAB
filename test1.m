x=rand(1,9999999); %create an array of random x values
tic;
mex_sum_openmp(x) %calculate the sum of foo(x(i))
toc
