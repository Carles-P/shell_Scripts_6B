prueba1=`pwd`
echo $prueba1
cd $1
prueba2=`pwd`
if [ $prueba1 = $prueba2 ]; then
    echo "El directorio no existe"
else
    cd ..
    totalAntes=`ls -l $1 | wc -l`
    rm $1/*.txt
    totalDespues=`ls -l $1 | wc -l`
    borrados=`expr $totalAntes - $totalDespues`
    echo "Se han borrado $borrados ficheros"
fi
