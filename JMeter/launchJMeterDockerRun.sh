export timestamp=$(date +%Y%m%d_%H%M%S)
export volume_path=~/CICD/JMeter
export jmeter_path=/mnt/jmeter
sudo docker run -p 80:80 \
--volume "${volume_path}":${jmeter_path} \
jmeter -n -Jcsv_staticParams=${jmeter_path}/static_parameters.txt \
-Jmy_csv=${jmeter_path}/collectionsList.txt \
-JThreads=1 \
-t ${jmeter_path}/SolrJ.jmx \
-l ${jmeter_path}/tmp/result_${timestamp}.jtl -j ${jmeter_path}/tmp/jmeter_${timestamp}.log