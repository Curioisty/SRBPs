rm -r -f *.top  a.gro box.gro em.gro eq.gro md.gro  *.tpr  *.ndx

echo 6 | gmx pdb2gmx -f ka15.pdb -o a.gro -ignh -water tip3p  #创建topo文件选力场

gmx editconf -f a.gro -o box.gro -bt cubic -d  5 #加box

cp topol.top ion.top

gmx grompp -f em.mdp -c box.gro -p ion.top -o ions.tpr -maxwarn 1  
gmx insert-molecules -f box.gro -ci cl.gro -o ion.gro -nmol 15
echo "CL                  15" >> ion.top

gmx grompp -f em.mdp -c ion.gro -p ion.top -o em.tpr
gmx  mdrun -s em.tpr -c em.gro -nt 4  #能量最小化
 
echo q | gmx make_ndx -f em.gro -o 

gmx grompp -f eq.mdp -c em.gro -p ion.top -o eq.tpr -r em.gro -n
gmx mdrun -s eq.tpr -c eq.gro -nt 4



