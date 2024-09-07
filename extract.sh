datasets=("NYX" "Miranda" "Hurricane" "CESM" "SCALE")
for dataset in "${datasets[@]}"
do
    python3 extract_out_$2.py $1 $dataset
done
