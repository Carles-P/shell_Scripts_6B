length=`cat nombres.txt | wc -l`
i=1
while [ $i -le $length ];do
    nombre=`cat nombres.txt | tr '[:upper:]' '[:lower:]' | head -$i | tail -1`
    mkdir $nombre
    for j in `seq 1 $1`; do
	mkdir $nombre/personal${j}
    done
    i=$((i+1))
done
