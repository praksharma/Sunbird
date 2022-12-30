This directory tells you how little I know about Docker containers.


Quickly run Nvidia Modulus docker container.

[Installation instructions](https://docs.nvidia.com/deeplearning/modulus/user_guide/getting_started/installation.html)

[Install Nvidia Docker toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#setting-up-nvidia-container-toolkit)
```
docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -v "$(pwd):/examples" -it modulus:22.03 bash
```

See [this](https://stackoverflow.com/questions/72686120/docker-volume-bind-is-not-working-with-current-directory?noredirect=1#comment128395582_72686120)  for a silly mistake that I made.

## Modulus 22.09 docker jupyter lab port forward
We can use this command to execute an interactive session within the Docker container. Here `-p` exposes a particular port to the local system.

```sh
docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 --runtime nvidia -v ${PWD}:/examples -it -p 8888:8888 --rm modulus:22.09 bash
```

Now all we need to do is to fire the Jupyter lab on port 8888.

```sh
jupyter-lab --ip 0.0.0.0 --no-browser --port=8888 --allow-root
```

Now you should be able to detect your GPU within the jupyter notebook. By default Modulus uses Hydra configuration manager. It is possible to run Modulus without Hydra. We just need to move the contents within the main function in a number of cells and use `solver.solve()` to run the solver.

See a detailed tutorial [here](https://docs.nvidia.com/deeplearning/modulus/user_guide/notebook/notebook.html).
