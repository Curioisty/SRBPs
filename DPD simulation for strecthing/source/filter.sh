awk 'NR==1{print; p=$2; next} {d=$2-p; if(d<0)d=-d; if(d<=500){print; p=$2}}' forcetube.dat > forcetube_filtered.dat
