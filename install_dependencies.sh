#!/usr/bin/bash
module load python/3.7.0

cd spack
. share/spack/setup-env.sh

spack install cuda@10.1.243%gcc@7.4.0

#spack install silo@4.10.2 mpi=false  %gcc@7.4.0

spack install hpx@master malloc=jemalloc networking=none instrumentation=apex,papi %gcc@7.4.0

spack load boost@1.73.0 
spack load hpx@master

spack load cuda@10.1.243%gcc@7.4.0

spack install kokkos@develop +hpx +cuda cuda_arch=70  std=14 +wrapper cuda@10.1.243%gcc@7.4.0

