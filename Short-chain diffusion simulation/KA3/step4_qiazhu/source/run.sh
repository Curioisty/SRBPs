   
   rm -r -f log.* nohup.out jieguo3.lammpstrj  out.xyz  x*.txt

   let rand=1234

   echo 'variable rand equal' $rand > tmp_rand
   cat tmp_rand input1 > input

   nohup mpirun -n  1  lmp_mpi -in input &


 
