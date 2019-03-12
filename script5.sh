total=`cat listado.txt | wc -l`
procesosLinux=0
procesosWindows=0
usuariosLinux=0
usuariosWindows=0
for i in `seq 1 $total`; do
    linea=`cat listado.txt | head -$i | tail -1`
    sistema=`cat listado.txt | head -$i | tail -1 | awk '{print $2}'`
    procesos=`cat listado.txt | head -$i | tail -1 | awk '{print $3}'`
    if [ $sistema = "Linux" ]; then
	usuariosLinux=`expr $usuariosLinux + 1`
	procesosLinux=`expr $procesosLinux + $procesos`
    else
	usuariosWindows=`expr $usuariosWindows + 1`
	procesosWindows=`expr $procesosWindows + $procesos`
    fi
done
echo "Procesos Windows: $procesosWindows; usuarios Windows: $usuariosWindows"
echo "Procesos Linux: $procesosLinux; usuarios Linux: $usuariosLinux"
