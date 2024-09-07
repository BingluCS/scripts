#datasets=("NYX" "Miranda" "Hurricane" "CESM" "SCALE")
datasets=("Miranda")
#thread_nums=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 32 64 128 256 512 1024)
thread_nums=(1 2 4 6 8 10 12 14 16 18 20 22 24)

for ((type=1; type<=$#; type++));
do
    #rm outcome/${!type}_old/ -rf
    mv omp_outcome/${!type}/ omp_outcome/${!type}_$(date +'%m%d_%H%M%S')/
    #echo $(date +'%Y%m%d_%H%M%S')    
    for j in "${thread_nums[@]}"
    do
	mkdir -p omp_outcome/${!type}/$j
	for dataset in "${datasets[@]}"
	do
            for((i=0; i<=2; i++));
            do
    		echo ${!type} $dataset iter $i thread: $j
		if [ "${!type}" = "sz2" ]; then
		    export OMP_NUM_THREADS=$j
    		    . print_${!type}.sh $dataset -k >> omp_outcome/${!type}/$j/$dataset 2>&1
		    unset OMP_NUM_THREADS
            	elif [ "${!type}" = "sz3" ]; then
		    export OMP_NUM_THREADS=$j
		    . print_${!type}.sh $dataset -c sz3config >> omp_outcome/${!type}/$j/$dataset 2>&1
		    unset OMP_NUM_THREADS
		else
		    . print_${!type}.sh $dataset -x omp=$j, >> omp_outcome/${!type}/$j/$dataset 2>&1
		fi
	    done
	done
    done
done     
