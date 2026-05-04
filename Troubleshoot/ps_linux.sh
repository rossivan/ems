echo """"""""
cat /proc/cpuinfo
echo -e "\n\n"
cat /proc/meminfo
echo -e "\n\n"

echo `ulimit -a`


while [ true ]
do
        now=`date "+%m/%d/%y:%H:%M:%S"`
	
	echo -e "\n\n $now  ---top output--- \n\n"
        top -H -n 1 -p $1
                
           
  tibemsadmin -server tcp://{hostname}:{port} -ignore -script ems.states
  sleep 20

done;


