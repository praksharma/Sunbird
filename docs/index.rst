.. HPC Helper documentation master file, created by
   sphinx-quickstart on Tue Nov  8 08:20:16 2022.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to HPC Helper's documentation!
======================================

This documentation summarises my experience mainly with `Sunbird <https://portal.supercomputing.wales/index.php/about-sunbird/>`_, a HPC cluster located at the `Computaional Foundry, Swansea University, Wales <https://www.swansea.ac.uk/compsci/swansea-academy-of-advanced-computing-sa2c/supercomputing-wales/>`_.
One can follow `this <https://edbennett.github.io/SCW-tutorial/>`_ basic tutorial to understand the standard operations on any HPC cluster.

These tutorials are fairly advanced and is meant to increase the productivity. A comprehensive but non-intuitive guide can be found `here <https://github.com/praksharma/Sunbird/blob/main/Supercomputing-Wales-User-Guide-User-Guide-2020-v1.pdf>`_.

Basics tutorials
----------------

.. toctree::
   :maxdepth: 2
   :caption: SSH basics

   ssh.rst

.. toctree:: 
   :maxdepth: 2
   :caption: Remote VS Code
   
   notebooks/Remote-SSH

.. toctree:: 
   :maxdepth: 2
   :caption: Submit Interactive Jobs

   notebooks/1. Use GPU interactive session

.. toctree:: 
   :maxdepth: 2
   :caption: Submit Batch Jobs

   notebooks/2. Job submission with GPU

.. toctree:: 
   :maxdepth: 2
   :caption: MIG partition Issues

   notebooks/3. Interactive GPU best practices

Intermediate tutorials
----------------------

.. toctree:: 
   :maxdepth: 2
   :caption: Jupyter Lab port forward on local network
   
   jupyter_lab_local.rst

.. toctree:: 
   :maxdepth: 2
   :caption: Jupyter Lab port forward from the Login node of Sunbird

   notebooks/On_Login_node

.. toctree:: 
   :maxdepth: 2
   :caption: Jupyter Lab port forward from a compute node of Sunbird

   notebooks/On_GPU_node

Advanced tutorials
----------------------

.. toctree:: 
   :maxdepth: 2
   :caption: Remote VNC session

   notebooks/1. Basic
   notebooks/2. Daily_use

