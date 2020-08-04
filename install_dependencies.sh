#!/usr/bin/bash

cd spack
. share/spack/setup-env.sh

spack install silo@4.10.2 mpi=false  %gcc@8.1.1

spack install hpx@master malloc=jemalloc networking=none instrumentation=apex,papi %gcc@8.1.1 

spack load hpx
