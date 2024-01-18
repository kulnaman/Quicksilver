#!/bin/bash

#Problem 2:

# 1 rank per node 
# 64 threads per rank
# 1311 mesh elements per node (11^3)
# 40 particles per mesh element -> 53240 particles per node

export OMP_NUM_THREADS=64

QS=../../../src/qs

# flux mini submit -N 1 --output=p2n17036804t64 -o mpi=spectrum  $QS -i Coral2_P2.inp -X 1  -Y 1  -Z 1  -x 11  -y 11  -z 11  -I 1  -J 1  -K 1  -n 53240      > p2n00001t64
# flux mini submit -N 2  --output=p2n17036804t64 -o mpi=spectrum   $QS -i Coral2_P2.inp -X 2  -Y 1  -Z 1  -x 22  -y 11  -z 11  -I 2  -J 1  -K 1  -n 106480     > p2n00002t64_1
# flux mini submit -N 2  --output=p2n17036804t64 -o mpi=spectrum   $QS -i Coral2_P2.inp -X 2  -Y 1  -Z 1  -x 22  -y 11  -z 11  -I 2  -J 1  -K 1  -n 106480     > p2n00002t64_2
# flux mini submit -N 4 --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 2  -Y 2  -Z 1  -x 22  -y 22  -z 11  -I 2  -J 2  -K 1  -n  212960
flux mini run -N 2 --output=p2n17036804t64 -o mpi=spectrum  $QS -i Coral2_P2.inp -X 2  -Y 2  -Z 2  -x 22  -y 22  -z 22  -I 2  -J 2  -K 2  -n  212960    > p2n00008t64
# flux mini submit -N 4 --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 4  -Y 2  -Z 2  -x 44  -y 22  -z 22  -I 4  -J 2  -K 2  -n 851840     > p2n00016t64
# flux mini submit -N 32 --output=p2n17036804t64 -o mpi=spectrum  $QS -i Coral2_P2.inp -X 4  -Y 4  -Z 2  -x 44  -y 44  -z 22  -I 4  -J 4  -K 2  -n 1703680    > p2n00032t64
# flux mini submit -N 64 --output=p2n17036804t64 -o mpi=spectrum  $QS -i Coral2_P2.inp -X 4  -Y 4  -Z 4  -x 44  -y 44  -z 44  -I 4  -J 4  -K 4  -n 3407360    > p2n00064t64
# flux mini submit -N 128 --output=p2n17036804t64 -o mpi=spectrum  $QS -i Coral2_P2.inp -X 8  -Y 4  -Z 4  -x 88  -y 44  -z 44  -I 8  -J 4  -K 4  -n 6814720    > p2n00128t64
# flux mini submit -N 256 --output=p2n17036804t64 -o mpi=spectrum  $QS -i Coral2_P2.inp -X 8  -Y 8  -Z 4  -x 88  -y 88  -z 44  -I 8  -J 8  -K 4  -n 13629440   > p2n00256t64
# flux mini submit -N 512 --output=p2n17036804t64 -o mpi=spectrum  $QS -i Coral2_P2.inp -X 8  -Y 8  -Z 8  -x 88  -y 88  -z 88  -I 8  -J 8  -K 8  -n 27258880   > p2n00512t64
# flux mini submit -N 1024 --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 16 -Y 8  -Z 8  -x 176 -y 88  -z 88  -I 16 -J 8  -K 8  -n 54517760   > p2n01024t64
# flux mini submit -N 2048 --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 16 -Y 16 -Z 8  -x 176 -y 176 -z 88  -I 16 -J 16 -K 8  -n 109035520  > p2n02048t64
# flux mini submit -N 4096 --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 16 -Y 16 -Z 16 -x 176 -y 176 -z 176 -I 16 -J 16 -K 16 -n 218071040  > p2n04096t64
# flux mini submit -N 8192  --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 32 -Y 16 -Z 16 -x 352 -y 176 -z 176 -I 32 -J 16 -K 16 -n 436142080  > p2n08192t64
# flux mini submit -N 16384 --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 32 -Y 32 -Z 16 -x 352 -y 352 -z 176 -I 32 -J 32 -K 16 -n 872284160  > p2n16384t64
 # flux mini submit -N 4 --output=p2n17036804t64 -o mpi=spectrum $QS -i Coral2_P2.inp -X 48 -Y 32 -Z 16 -x 528 -y 532 -z 176 -I 48 -J 32 -K 16 -n 1308426240 > p2n24768t64
