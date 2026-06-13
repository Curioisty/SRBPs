rm -f vmd.gro  vmd.xtc  tmp1  traj_whole.xtc


echo 1 | gmx trjconv -f traj.trr -s md.tpr -n -o traj_whole.xtc -pbc whole

echo 1 > tmp1
echo 1 >> tmp1
gmx trjconv -f traj_whole.xtc -s md.tpr -n -o vmd.xtc -center < tmp1


echo 1 | gmx trjconv -f vmd.xtc -s md.tpr -n -o vmd.gro -b 0 -e 0
