datasets=("NYX" "Miranda" "Hurricane" "CESM" "SCALE")
for ((type=1; type<=$#; type++));
do
    #rm outcome/${!type}_old/ -rf
    mv outcome/${!type}/ outcome/${!type}_$(date +'%m%d_%H%M%S')/
    #echo $(date +'%Y%m%d_%H%M%S')    
    mkdir outcome/${!type}
    for dataset in "${datasets[@]}"
    do
        for((i=0; i<=2; i++));
        do
    	echo ${!type} $dataset iter $i
    	. print_${!type}.sh $dataset >> outcome/${!type}/$dataset 2>&1
        done
    done
done     
