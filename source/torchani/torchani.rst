.. _backbone-label:

Torchani
==============================

Introduction
~~~~~~~~
TorchANI is a PyTorch implementation of ANI(Accurate NeurAl networK engINe for Molecular Energies), created and maintained by the Roitberg group. TorchANI contains classes like AEVComputer, ANIModel, and EnergyShifter that can be pipelined to compute molecular energies from the 3D coordinates of molecules. It also include tools to: deal with ANI datasets(e.g. ANI-1, ANI-1x, ANI-1ccx, ANI-2x) at torchani.data, import various file formats of NeuroChem at torchani.neurochem, and more at torchani.utils.
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/hpc:torchani

Versions
~~~~~~~~
- 2021.04

Commands
~~~~~~~
- mpirun
- python
- python3
- jupyter

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load torchani

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run torchani on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=torchani
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc torchani

