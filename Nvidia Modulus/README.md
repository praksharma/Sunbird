UPDATE 6:
Date: 12th Sep 2022.
Successfully trained LDC on multiple GPUs using `mpirun` and NVIDIA Modulus 22.07 Apptainer image.

UPDATE 5:
Date: 29th Aug 2022.

Successfully built Nvidia Modulus 22.07 Apptainer image recipe. See directory v22.07.

UPDATE 4:
On 28th June 2022, I was able to run the full version of Nvidia Modulus i.e. including the tessellation library. Please look at the 3rd ipynb file for more details.

UPDATE 3:

Fortunately, I was able to run Modulus v22.03 in interactive GPU session using `salloc` and then `srun` for commands. Also, Conda environment is experiencing lots of problems. Thus, I will use Python virtual environment.

UPDATE 2:

It turns out, Modulus v22.03 is working, but there is some problem with the Horovod inside the port forwarded Jupyter lab, as it can't register the os paths for some reason, resulting in the following error.

Link: https://recon.swansea.ac.uk/#narrow/stream/4-general/topic/Sunbird


Hello everyone. Fortunately, I was able to set up the new Nvidia Modulus. It is running fine on the CPU. However, on the GPU Nvidia Modulus uses some distribution algorithm. Specifically, `os.environ.get("RANK")` is returning `None`. I can't find a suitable explanation of what this command does. Here is the complete error.
```python
[s.1915438@scs2041 ldc]$ python ldc_2d.py 
Traceback (most recent call last):
  File "/scratch/s.1915438/modulus/lib/python3.9/site-packages/modulus-22.3-py3.9.egg/modulus/distributed/manager.py", line 124, in initialize
    DistributedManager.initialize_env()
  File "/scratch/s.1915438/modulus/lib/python3.9/site-packages/modulus-22.3-py3.9.egg/modulus/distributed/manager.py", line 67, in initialize_env
    rank = int(os.environ.get("RANK"))
TypeError: int() argument must be a string, a bytes-like object or a number, not 'NoneType'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/scratch/s.1915438/Modulus_examples/examples/ldc/ldc_2d.py", line 122, in <module>
    run()
  File "/scratch/s.1915438/modulus/lib/python3.9/site-packages/modulus-22.3-py3.9.egg/modulus/hydra/utils.py", line 58, in func_decorated
    DistributedManager.initialize()
  File "/scratch/s.1915438/modulus/lib/python3.9/site-packages/modulus-22.3-py3.9.egg/modulus/distributed/manager.py", line 127, in initialize
    DistributedManager.initialize_slurm(port)
  File "/scratch/s.1915438/modulus/lib/python3.9/site-packages/modulus-22.3-py3.9.egg/modulus/distributed/manager.py", line 108, in initialize_slurm
    DistributedManager.setup(
  File "/scratch/s.1915438/modulus/lib/python3.9/site-packages/modulus-22.3-py3.9.egg/modulus/distributed/manager.py", line 150, in setup
    os.environ["MASTER_ADDR"] = addr
  File "/scratch/s.1915438/modulus/lib/python3.9/os.py", line 684, in __setitem__
    value = self.encodevalue(value)
  File "/scratch/s.1915438/modulus/lib/python3.9/os.py", line 756, in encode
    raise TypeError("str expected, not %s" % type(value).__name__)
TypeError: str expected, not NoneType
[s.1915438@scs2041 ldc]$ 
```

Ok I get it. This is the list of environment variables. And `RANK` is not in the list.

UPDATE 1:

Nvidia Modulus v21.06 doesn't work on SUNBIRD because of some cuDNN issue. I was able to run it on Google Collab and Paperspace Gradient notebooks. However, I've sunbird and I want to leverage it.

Nvidia Modulus v22.03 is promising as it is designed on Pytorch meaning no crappy Tensorflow. Also, they have included some state-of-art architectures. However, looks like it also doesn't work on SUNBIRD due to faulty [installation instructions](https://docs.nvidia.com/deeplearning/modulus/text/getting_started/installation.html#modulus-bare-metal-install).

They are using `egg` files fror PySDF package, that uses `easy_install` which is depreciated and does not work with Python 3.7 and later. `easy_install` was once a part of `setuptools`.

Fortunately, someone [over here](https://forums.developer.nvidia.com/t/modulus-22-03-bare-metal-installation-no-module-named-easy-install/210970/4) helped me to install Modulus v22.03 by replacing the PySDF file with the one in older version and then following the older instructions. 
