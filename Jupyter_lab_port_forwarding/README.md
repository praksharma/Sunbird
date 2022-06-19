How to access a Jupyter-lab server running on Sunbird on a local PC?

* For login node
* For Compute/ GPU Node
  * You can run individual cells of IronPython file (.ipynb) on Sunbird's GPU as if it were you own local GPU.
  * You can see plots. Change parameters if plot is not nice.
  * You can edit/debug your code.
  * You have python kernels thus it has a workspace to remember your variables.
  * You can drag and drop files.
  * For multiple files, use filezilla.
  
For daily usage- Pytorch env

```bash
cd /scratch/s.1915438
sbatch jupyter.sh
squeue -u $USER # check the compute node number
ls -l jupyter_log/  # check latest lof file
cat jupyter_log/jupyter-lab-7185546.log # check the port number
```

Port forward:

```
ssh -N -L 8888:scs2041:8888 s.1915438@sunbird.swansea.ac.uk
```
