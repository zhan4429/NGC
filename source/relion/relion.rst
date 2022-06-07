.. _backbone-label:

Relion
==============================

Introduction
~~~~~~~~
RELION (for REgularized LIkelihood OptimizatioN) implements an empirical Bayesian approach for analysis of electron cryo-microscopy (Cryo-EM). Specifically it provides methods of refinement of singular or multiple 3D reconstructions as well as 2D class averages. RELION is an important tool in the study of living cells.
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/hpc:relion

Versions
~~~~~~~~
- 2.1.b1
- 3.0.8
- 3.1.0
- 3.1.2
- 3.1.3

Commands
~~~~~~~
- mpirun
- relion
- relion_refine_mpi

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load relion

Example job
~~~~~
To run relion on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=relion
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc relion

