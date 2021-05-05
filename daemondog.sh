for ((;;))
do
while ps ax | grep $NashCashd ;
do
sleep 5 #seconds to restart
done
    ./NashCashd --db-enable-compression --db-enable-level-db --enable-blockexplorer --enable-cors="*" --enable-blockexplorer-detailed --rpc-bind-ip=0.0.0.0 --rpc-bind-port=24888 
done
