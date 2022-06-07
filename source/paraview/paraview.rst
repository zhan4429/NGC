.. _backbone-label:

Paraview
==============================

Introduction
~~~~~~~~
ParaView is an open-source, multi-platform data analysis and visualization application. This ParaView container is enabled with the NVIDIA IndeX plugin and the OptiX ray-tracing backend. It can be used in tandem with an official ParaView ]] .. ver .. [[ client or standalone as ParaView Web. Note: no ParaView client GUI in this container. However, ParaView Web Visualizer app is included for a ParaView-like experience inside a web browser. You can start ParaView Web with a 'pvweb' command and point your browser to proper http://HOST:PORT/ Default port is 8080 ('--port NNNN' to change, '--help' for help).
For more information, please check:
NGC: https://ngc.nvidia.com/catalog/containers/nvidia-hpcvis:paraview

Versions
~~~~~~~~
- 5.9.0

Commands
~~~~~~~
- pvserver
- pvbatch
- pvpython
- pvdataserver
- pvrenderserver
- mpirun

Module
~~~~~~~~
You can load the modules by::

    module load ngc
    module load paraview

Example job
~~~~~
To run paraview on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=paraview
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml ngc paraview

