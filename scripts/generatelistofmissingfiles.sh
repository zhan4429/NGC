#! /bin/bash

# This script generates a list of ngc containers that are not in the git directory
# The output file is listofmissingfiles.txt and is used in generatedocumentation.sh
# Example usage: ./generatelistofmissingfiles.sh

ngccontainers="/opt/spack/modulefiles/ngc/"
gitfolders="../source/"

diff -q $gitfolders $ngccontainers | grep "Only in" > tempfile.txt

awk 'NF{ print $NF }' tempfile.txt > listofmissingfiles.txt

rm tempfile.txt