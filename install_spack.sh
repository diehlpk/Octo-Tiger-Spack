#!/usr/bin/bash

git clone https://github.com/spack/spack
cd spack
git checkout releases/v0.15
. share/spack/setup-env.sh
git clone https://github.com/kokkos/kokkos-spack.git
spack repo add kokkos-spack/kokkos
module load gcc/8.1.0
spack compiler find
