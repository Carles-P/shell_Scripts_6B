totalAntes=`ls -l $1 | wc -l`
rm $1/*.txt
totalDespues=`ls -l $1 | wc -l`
borrados=`expr $totalAntes - $totalDespues`
echo "Se han borrado $borrados ficheros"
