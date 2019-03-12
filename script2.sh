total=`cat precipitaciones.txt | wc -l`
suma=0
for i in `seq 1 $total`; do
    suma=$((suma+`cat precipitaciones.txt | awk '{print $2}' | head -$i | tail -1`))
done
media=`echo "scale=2; $suma/$total" | bc`
echo "La media de precipitaciones es $media"
