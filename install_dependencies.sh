#!/usr/bin/bash

module load cuda 

cd spack
. share/spack/setup-env.sh

spack install silo@4.10.2 mpi=false  %gcc@8.1.1

spack install hpx@master malloc=jemalloc networking=none instrumentation=apex,papi %gcc@8.1.1 

spack load hpx@master

spack install kokkos@develop hpx=true cuda=true cuda_arch=70  std=14 %gcc@8.1.1

