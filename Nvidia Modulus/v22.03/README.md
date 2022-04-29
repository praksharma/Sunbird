In short the easiest way is to first `salloc` then activate the python virtual environment and submit jobs using `srun`.

salloc --nodes=1 --account=scw1901 --partition=accel_ai --gres=gpu:2

```sh
[s.1915438@sl2 ~]$ salloc --nodes=1 --account=scw1901 --partition=accel_ai --gres=gpu:2
salloc: Granted job allocation 7164260
salloc: Waiting for resource configuration
salloc: Nodes scs2042 are ready for job
[s.1915438@sl2 ~]$ cd /scratch/s.1915438
[s.1915438@sl2 s.1915438]$ source env/modulus/bin/activate
```


