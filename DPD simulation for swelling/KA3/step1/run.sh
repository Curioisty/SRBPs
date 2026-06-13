rm -r -f nohup.out
nohup mpirun -n 16 lmp_mpi -in input1  &
