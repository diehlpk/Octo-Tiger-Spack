#!/usr/bin/bash

git clone https://github.com/spack/spack
cd spack
git checkout releases/v0.15
. share/spack/setup-env.sh
spack repo add kokkos-spack/kokkos
module load gcc/8.1.0
spack compiler find
