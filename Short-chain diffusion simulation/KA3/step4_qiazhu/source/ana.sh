#awk '$1 == 1' out.xyz | awk 'NR % 2 == 1 {print > "x1.txt"; next} {print > "x2.txt"}'

#awk '/ITEM: ATOMS id x y z/{for(i=1;i<=3006;i++){getline; print}}'  jieguo2.lammpstrj  > all.txt
#
awk '/^2 / {print $2, $3, $4}' out.xyz > a1.txt
