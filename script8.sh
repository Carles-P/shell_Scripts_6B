for i in `seq 2 254`; do
    ip=192.168.1.$i
    received=`ping -c 1 $ip | grep -e "1 received" | wc -l`
    if [ $received -gt 0 ]; then
	echo $ip >> direcciones.txt
    fi
done
cat direcciones.txt
rm direcciones.txt
