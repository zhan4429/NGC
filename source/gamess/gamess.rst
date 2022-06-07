.. _backbone-label:

Gamess
==============================

Introduction
~~~~~~~~
The General Atomic and Molecular Electronic Structure Systems (GAMESS) program simulates molecular quantum chemistry, allowing users to calculate various molecular properties and dynamics.
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/hpc:gamess

Versions
~~~~~~~~
- 17.09-r2-libcchem

Commands
~~~~~~~
- rungms

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load gamess

Example job
~~~~~
To run gamess on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=gamess
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc gamess

