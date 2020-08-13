#!/usr/bin/bash
module load python/3.7.0

git clone https://github.com/spack/spack
cd spack
git checkout releases/v0.15
. share/spack/setup-env.sh
git clone https://github.com/kokkos/kokkos-spack.git
spack repo add kokkos-spack/kokkos
module load gcc/7.4.0
spack compiler find

mkdir -p ~/.spack
cp packages.yaml ~/.spack/
