.. _backbone-label:

Rapidsai
==============================

Introduction
~~~~~~~~
The RAPIDS suite of software libraries gives you the freedom to execute end-to-end data science and analytics pipelines entirely on GPUs. It relies on NVIDIA® CUDA® primitives for low-level compute optimization, but exposes that GPU parallelism and high-bandwidth memory speed through user-friendly Python interfaces.
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/nvidia:rapidsai:rapidsai

Versions
~~~~~~~~
- 0.12
- 0.13
- 0.14
- 0.15
- 0.16
- 0.17
- 21.06
- 21.10

Commands
~~~~~~~
- ipython3
- ipython3
- jupyter
- python
- python3
- python3.8

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load rapidsai

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run rapidsai on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=rapidsai
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc rapidsai

