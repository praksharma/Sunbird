For lustrehome partition
ssh -L 8888:localhost:8888 -t s.1915438@sunbird.swansea.ac.uk "module load anaconda/3;source activate ml;jupyter-lab"

For scratch partition:

ssh -L 8888:localhost:8888 -t s.1915438@sunbird.swansea.ac.uk "cd /scratch/s.1915438/;module load anaconda/3;source activate ml;jupyter-lab"
