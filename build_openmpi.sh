#!/bin/bash

. intel/bin/compilervars.sh intel64

set -e
set -x

wget https://www.open-mpi.org/software/ompi/v2.0/downloads/openmpi-2.0.2.tar.gz
tar xzf openmpi-2.0.2.tar.gz
cd openmpi-2.0.2
./configure CC=icc CXX=icpc F77=ifort FC=ifort --prefix=/home/flecsi/bin
make all install
cd ..
rm -rf openmpi-2.0.2.tar.gz openmpi-2.0.2
