# Swansea university VPN

Swansea University has got VPN to securely access the university's local network. This directory contains manuals to access Swansea university PC remotely using a ssh, rdp, sftp and even vnc.

### Remote Jupyter-lab
This is not working
```sh
ssh -L 8888:localhost:8888 -t hell@137.44.3.13 "jupyter-lab"
```
This one is working. SSH into the PC and start jupyter server. Note down the port. We forward the port as follows:

```sh
ssh -L 8888:localhost:8888 -t hell@137.44.3.13
```

Then use the address to open the server.
