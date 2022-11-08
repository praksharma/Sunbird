Automatic SSH
=============

Normally we login to the Sunbird as follows:

.. line-block::
    Username: s.1915438@sunbird.swansea.ac.uk
    Enter password:
    Ctrl + D to exit

Create a ``config`` file
------------------------
.. line-block::
    ``cd $HOME/.ssh``
    ``gedit config``

Type the details in the following format::

    Host	sunbird # anyname
    User	s.1915438
    HostName 		sunbird.swansea.ac.uk

This creates an alias for ``s.1915438@sunbird.swansea.ac.uk`` as ``sunbird``. Use the alias as follows:
    
    ``ssh sunbird``

Generate SSH keys
-----------------
A SSH key not only enables us to do a passwordless login but is also way much secure. A SSH key contains two files, the public and the private key. We can upload the public key to the systems we want to access and we use the private key to do a handshake.

Type the following to create a pair of SSH keys.
    
    ``ssh-keygen``

Use a paraphrase for extra security. But if you not working in FBI, it is completely fine to ignore it. Press enter to store the keys at the default location (``~/.ssh/```).

Copy the Public key
-------------------
We can copy the public key using the following command.
    
    ``ssh-copy-id sunbird``

Enter the password to authenticate yourself.

The need of a SSH agent
-----------------------
To this end, if you have used a paraphrase to generate the SSH keys, then you need to type paraphrase each time you login to Sunbird. We can store the paraphrase information in a software called the SSH agent and add the agent to the system startup. If you haven't used a paraphrase then you don't need a SSH agent.

Ubuntu comes with a preinstalled SSH agent named the GNOME Keyring. You can add the paraphrase to the agent as follows:

    ``ssh-add``


Now login again to the Sunbird and hopefully you don't need the password.