.. _backbone-label:

Autodock
==============================

Introduction
~~~~~~~~
The AutoDock Suite is a growing collection of methods for computational docking and virtual screening, for use in structure-based drug discovery and exploration of the basic mechanisms of biomolecular structure and function.
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/hpc:autodock

Versions
~~~~~~~~
- 2020.06

Commands
~~~~~~~
- autodock_gpu_128wi

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load autodock

Example job
~~~~~
To run autodock on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=autodock
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc autodock

