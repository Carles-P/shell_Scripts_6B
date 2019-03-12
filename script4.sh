total=`cat numeros.txt | wc -l`
sumapares=0
sumaimpares=0
for i in `seq 1 $total`; do
    num=`cat numeros.txt | head -$i | tail -1`
    if [ `expr $num % 2` = 0 ]; then
	echo "${num}" >> pares.txt
	sumapares=`expr $sumapares + 1`
    else echo "${num}" >> impares.txt
	 sumaimpares=`expr $sumaimpares + 1`
    fi
done
echo "Pares:"
cat pares.txt
echo "Total: $sumapares"
echo "Impares: "
cat impares.txt
echo "Total: $sumaimpares"
rm pares.txt
rm impares.txt
