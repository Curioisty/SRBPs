for i in `seq 1 2`; do
#   let i=1
   rm -r -f A$i
   cp -r source A$i

   echo A$i

   cd A$i

   let rand=i*12+34

   echo 'variable rand equal' $rand > tmp_rand
   cat tmp_rand input1 > input

   nohup mpirun -n  8  lmp_mpi -in input &

   cd ..

done

