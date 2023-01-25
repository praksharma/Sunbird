.. HPC Helper documentation master file, created by
   sphinx-quickstart on Tue Nov  8 08:20:16 2022.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to HPC Helper's documentation!
======================================

This documentation summarises my experience mainly with `Sunbird <https://portal.supercomputing.wales/index.php/about-sunbird/>`_, a HPC cluster located at the `Computational Foundry, Swansea University, Wales <https://www.swansea.ac.uk/compsci/swansea-academy-of-advanced-computing-sa2c/supercomputing-wales/>`_.
One can follow `this <https://edbennett.github.io/SCW-tutorial/>`_ basic tutorial to understand the standard operations on any HPC cluster.

The tutorials are classified as basic, Intermediate and advanced. A comprehensive but non-intuitive guide can be found `here <https://github.com/praksharma/Sunbird/blob/main/Supercomputing-Wales-User-Guide-User-Guide-2020-v1.pdf>`_.

Personal Tweaks
---------------
By default, the ``.bashrc`` is read-only for the ``$USER`` and regenerates itself after the major updates. We are provide with ``~/.myenv`` to put all the personal tweaks such as the login directory, print a message, export environment variables etc.

Care should be taken that directly printing a message on ``STDOUT`` will create problems with ``SFTP`` connections, instead we can use ``STDERR`` to print the message. Here is an example.

.. code-block:: bash

   [s.1915438@sl1(sunbird) s.1915438]$ cat $HOME/.myenv 
   echo "MESSAGE : env variables loaded">&2
   export VL_DIR=/scratch/s.1915438/vltesting/VirtualLab
   export PATH=$PATH:/scratch/s.1915438/vltesting/VirtualLab/bin

   cd /scratch/s.1915438
   pwd>&2

This will echo the MESSAGE, the ``pwd``, create the environment variables and cd to the ``/scratch/s.1915438`` partition each time a new TTY session is opened in a login or a compute node. 

Basic Tutorials
----------------

.. toctree::
   :maxdepth: 1
   :caption: SSH basics

   ssh.rst

.. toctree:: 
   :maxdepth: 1
   :caption: Remote VS Code
   
   notebooks/Remote-SSH

.. toctree:: 
   :maxdepth: 1
   :caption: Submit Interactive Jobs

   notebooks/1. Use GPU interactive session

.. toctree:: 
   :maxdepth: 1
   :caption: Submit Batch Jobs

   notebooks/2. Job submission with GPU

.. toctree:: 
   :maxdepth: 1
   :caption: MIG partition Issues

   notebooks/3. Interactive GPU best practices

Intermediate Tutorials
----------------------

.. toctree:: 
   :maxdepth: 1
   :caption: Jupyter Lab port forward on local network
   
   jupyter_lab_local.rst

.. toctree:: 
   :maxdepth: 1
   :caption: Jupyter Lab port forward from the Login node of Sunbird

   notebooks/On_Login_node

.. toctree:: 
   :maxdepth: 1
   :caption: Jupyter Lab port forward from a compute node of Sunbird

   notebooks/On_GPU_node

Advanced Tutorials
------------------

.. toctree:: 
   :maxdepth: 1
   :caption: Remote VNC session

   notebooks/1. Basic
   notebooks/2. Daily_use

.. toctree:: 
   :maxdepth: 1
   :caption: Swansea University VPN Tunnel

   notebooks/1. Setting up the VPN
   notebooks/2. Setting up the Host system
   notebooks/3. SSH
   notebooks/4. RDP

Docker Tutorials
----------------

.. toctree:: 
   :maxdepth: 1
   :caption: Basic commands

   notebooks/1. Basic manual/1. Basics

.. toctree:: 
   :maxdepth: 1
   :caption: Advanced commands

   notebooks/1. Basic manual/3. Advanced

.. toctree:: 
   :maxdepth: 1
   :caption: Port Mapping of Jupyter server
   
   notebooks/1. Basic manual/Jupyter-lab_inside_container

Singularity Tutorials
---------------------

.. toctree:: 
   :maxdepth: 1
   :caption: Singularity Basics

   notebooks/Singularity/1. Singularity basics

.. toctree:: 
   :maxdepth: 1
   :caption: Volume Binding

   notebooks/Singularity/2. Volume binding

.. toctree:: 
   :maxdepth: 1
   :caption: Basic Builds

   notebooks/Singularity/3. Pulling Docker images

.. toctree:: 
   :maxdepth: 1
   :caption: NVIDIA Modulus Singularity container (Failed)

   notebooks/Singularity/5. Nvidia Modulus Docker image

NVIDIA Modulus Setup
--------------------

v22.03
******

.. toctree:: 
   :maxdepth: 1
   :caption: Interactive GPU session
   
   notebooks/Nvidia Modulus/v22.03/1. Using interactive GPU session

.. toctree:: 
   :maxdepth: 1
   :caption: Multi-GPU

   notebooks/Nvidia Modulus/v22.03/2. Parallel Processing using Multi-GPU Configurations

.. toctree:: 
   :maxdepth: 1
   :caption: With PySDF

   notebooks/Nvidia Modulus/v22.03/3. Full Nvidia Modulus

.. toctree:: 
   :maxdepth: 1
   :caption: v22.03 Summary

   notebooks/Nvidia Modulus/v22.03/4. best practices

v22.07 - Apptainer Image
************************

.. toctree:: 
   :maxdepth: 1
   :caption: Constructing the Apptainer script

   notebooks/Nvidia Modulus/v22.07/1. main

.. toctree:: 
   :maxdepth: 1
   :caption: Overiding Defaults of Apptainer 

   notebooks/Nvidia Modulus/v22.07/2. Some fixes

.. toctree:: 
   :maxdepth: 1
   :caption: Multi-GPU trainign using mpirun

   notebooks/Nvidia Modulus/v22.07/3. Apptainer multiple GPU/1. Nvidia Modulus multiple GPUs

v22.09 - Apptainer Image
************************

.. toctree:: 
   :maxdepth: 1
   :caption: The Apptainer script

   notebooks/Nvidia Modulus/v22.09/1. Building an Apptainer image