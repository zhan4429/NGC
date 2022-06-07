.. _backbone-label:

Julia
==============================

Introduction
~~~~~~~~
The Julia programming language is a flexible dynamic language, appropriate for scientific and numerical computing, with performance comparable to traditional statically-typed languages.
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/hpc:julia

Versions
~~~~~~~~
- v1.5.0
- v2.4.2

Commands
~~~~~~~
- julia

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load julia

Example job
~~~~~
To run julia on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=julia
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc julia

