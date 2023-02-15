How to submit jobs on Sunbird HPC cluster?

Login node interactive session for plotting:

example: 
1. Interactive session on login node for plotting.


```sh
ssh -L 8888:localhost:8888 -t s.1915438@sunbird.swansea.ac.uk "cd /scratch/s.1915438/;source env/modulus/bin/activate;jupyter-lab"
```

Working version:

```sh
ssh -L 8888:localhost:8888 -t s.1915438@sunbird.swansea.ac.uk "cd /scratch/s.1915438/;source modulus_pysdf/modulus_pysdf/bin/activate;jupyter-lab"
```

2. See brief of all nodes with number of CPU and GPU with RAM. 

```sh
sinfo -o "%20N  %10c  %10m  %25f  %10G "
```
