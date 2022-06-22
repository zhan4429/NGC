.. _backbone-label:

Gromacs
==============================

Introduction
~~~~~~~~
GROMACS is a molecular dynamics application designed to simulate Newtonian equations of motion for systems with hundreds to millions of particles. GROMACS is designed to simulate biochemical molecules like proteins, lipids, and nucleic acids that have a lot of complicated bonded interactions. More info on GROMACS can be found at http://www.gromacs.org/
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/hpc:gromacs

Versions
~~~~~~~~
- 2018.2
- 2020.2
- 2021.3
- 2021

Commands
~~~~~~~
- gmx

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load gromacs

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run gromacs on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=gromacs
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc gromacs

