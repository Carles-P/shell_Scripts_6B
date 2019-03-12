total=`cat precipitaciones.txt | wc -l`
for i in `seq 1 $total`; do
    dias=`cat precipitaciones.txt | head -$i | tail -1 | awk '{print $1}'`
    precipitaciones=`cat precipitaciones.txt | head -$i | tail -1 | awk '{print $2}'`
    if [ $precipitaciones = 0 ]; then
        echo $dias >> dias.txt
    fi
done
lineas=`cat dias.txt | wc -l`
for i in `seq 1 $lineas`; do
    dia=`cat dias.txt | head -$i | tail -1`
    while [ $dia -gt 7 ]; do
	dia=`expr $dia - 7`
    done
    if [ $dia = 1 ]; then
	echo "Lunes"
    elif [ $dia = 2 ]; then
	echo "Martes"
    elif [ $dia = 3 ]; then
	echo "Miércoles"
    elif [ $dia = 4 ]; then
	echo "Jueves"
    elif [ $dia = 5 ]; then
	echo "Viernes"
    elif [ $dia = 6 ]; then
	echo "Sábado"
    elif [ $dia = 7 ]; then
	echo "Domingo"
    fi
done
rm dias.txt
