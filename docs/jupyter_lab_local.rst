Automatic SSH
======================

Here we assume that the server/ host is a Windows 10 machine and the customer/client is a Linux machine.

Setup the Windows server
------------------------------------------------

.. line-block::
    1. Enable OpenSSH
    ``Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'``

    This should tell which one is installed.
    ``OpenSSH.Client`` is to access connections
    ``OpenSSH.Server`` to create servers

    2. Install missing dependencies
    # Install the OpenSSH Client
    ``Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0``

    # Install the OpenSSH Server
    ``Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0``

    3. Go to services and find two servers starting with OpenSSH
    Start the services and set them to manual as we are not always using SSH

Now, our Windows 10 can accept and host SSH connections.

Setup the Linux Client
----------------------

.. line-block::
    4. On Linux PC, check if SSH deamon (service) is running
    ``sudo systemctl status sshd``
    If it is not install use: 
    ``sudo apt install openssh-server``

    5. Enable the SSH server on system boot
    ``sudo systemctl enable ssh``

Now, from either windows or Linux we can SSH using ``ssh "Username"@localIP``.

Configure Jupyter Lab
---------------------
.. line-block::
    1. Generate config file
    ``jupyter lab --generate-config``

    2. Set password for security I've set it as hell
    ``jupyter lab password``

    3. start Jupyter lab from anaconda prompt on server computer
    # ip 0.0.0.0   listen on all IPs
    # --no-browser for not opening Jupyter lab on the server itself
    ``jupyter lab --ip 0.0.0.0 --no-browser --port=8888``

    Find your local IP version 4
    In Windows its ``ipconfig`` in cmd and find the ip for current hardware i.e. wifi or ethernet.
    In Linux its ``ip addr`` in terminal and find ip for current hardware.

    4. On the client computer
    Open a web browser.
    Type the URL as <your local ip address>:<port for jupyterlab>