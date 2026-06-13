
for i in `seq 3 4`;do
        let m=i*123+223
	rm -r -f A$i
	cp -r source  A$i
        
	cd A$i
        sed "s/2233445566/$m/g" "md.mdp" > "md2.mdp"
gmx grompp -f md2.mdp -c eq.gro -p ion.top -o md.tpr -n  index.ndx -maxwarn 3
nohup gmx  mdrun -s md.tpr -c md.gro -nt 8 &
        
        cd ..
 done
