This directory tells you how little I know about Docker containers.


Quickly run Nvidia Modulus docker container.

[Installation instructions](https://docs.nvidia.com/deeplearning/modulus/user_guide/getting_started/installation.html)

[Install Nvidia Docker toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#setting-up-nvidia-container-toolkit)
```
docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -v "$(pwd):/examples" -it modulus:22.03 bash
```

See [this](https://stackoverflow.com/questions/72686120/docker-volume-bind-is-not-working-with-current-directory?noredirect=1#comment128395582_72686120)  for a silly mistake that I made.
