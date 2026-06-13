rm -r -f nohup.out full.lammpstrj  jieguo.lammpstrj
nohup mpirun -n 16 lmp_mpi -in input4  &
