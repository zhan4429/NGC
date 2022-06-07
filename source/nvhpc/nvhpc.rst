.. _backbone-label:

Nvhpc
==============================

Introduction
~~~~~~~~
The NVIDIA HPC SDK is a comprehensive suite of compilers, libraries and tools essential to maximizing developer productivity and the performance and portability of HPC applications. The NVIDIA HPC SDK C, C++, and Fortran compilers support GPU acceleration of HPC modeling and simulation applications with standard C++ and Fortran, OpenACC directives, and CUDA. GPU-accelerated math libraries maximize performance on common HPC algorithms, and optimized communications libraries enable standards-based multi-GPU and scalable systems programming. Performance profiling and debugging tools simplify porting and optimization of HPC applications, and containerization tools enable easy deployment on-premises or in the cloud.
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/nvidia:nvhpc

Versions
~~~~~~~~
- 20.11
- 20.7
- 20.9
- 21.5
- 21.9

Commands
~~~~~~~
- nvc
- nvc++
- nvfortran
- nvcc
- pgcc
- pgc++
- pgfortran
- cuda-gdb
- ncu
- nv-nsight-cu-cli
- nvprof
- nsight-sys
- nsys

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load nvhpc

Example job
~~~~~
To run nvhpc on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=nvhpc
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc nvhpc

