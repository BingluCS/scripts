for i in 2 4 8 12 16 20 24
do
    echo $i
    . omp_store_zfp.sh $i
    . omp_store_zfpx.sh $i
    python3 extract_out_time.py zfp NYX $i
    python3 extract_out_time.py zfpx NYX $i
done
