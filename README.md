# OpenMP_MATLAB
Simple test code showing how to use OpenMP with MATLAB
Used this http://www.walkingrandomly.com/?p=1795 link for this code
``` sh
mex mex_sum_openmp.c CFLAGS="\$CFLAGS -fopenmp" LDFLAGS="\$LDFLAGS -fopenmp"
```
##Cluster
If running on cluster set the number of threads in the test2.sh file and then from terminal
``` sh
mcc -m test1.m # -> test1
qsub test2.sh
```

##Local
If running it locally then the just set omp_set_num_threads(2) in the c file or  
``` sh
export OMP_NUM_THREADS=2
```
And run test1.m in MATLAB
