if [ $# -eq 0 ]; then
    echo "Usage: $0 <argument>"
    echo "Examples: CESM, NYX, Miranda, Hurricane, S3D, SCALE"
    return
fi
  
rm -rf ../com_data/zfp-x/CESM/* ../com_data/zfp-x/Miranda/* ../com_data/zfp-x/Hu/* ../com_data/zfp-x/NYX/* 
rm -rf ../com_data/zfp-x/SCALE/*
  
if [ "$1" = "CESM" ]; then
  while read line
  do
   A=($line)
   echo ${A[0]}
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[1]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[2]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[3]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[4]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[5]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[6]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[7]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
   ../ZFP_X/bin/zfp -f -i ${A[0]} -2 3600 1800 -s -a ${A[8]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
  done < ./value_range/CESM
elif [ "$1" = "NYX" ]; then  
  while read line
  do
    A=($line)
    echo ${A[0]}
    echo ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[1]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[1]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[2]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[3]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[4]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[5]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[6]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[7]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 512 512 512 -s -a ${A[8]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
  done < ./value_range/NYX
elif [ "$1" = "Miranda" ]; then
  while read line
  do
    A=($line)
    echo ${A[0]}
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[1]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[2]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[3]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[4]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[5]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[6]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[7]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 384 384 256 -s -a ${A[8]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
  done < ./value_range/Miranda
elif [ "$1" = "Hurricane" ]; then
  while read line
  do
    A=($line)
    echo ${A[0]}
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[1]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[2]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[3]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[4]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[5]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[6]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[7]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 500 500 100 -s -a ${A[8]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
  done < ./value_range/Hurricane
elif [ "$1" = "SCALE" ]; then
  while read line
  do
    A=($line)
    echo ${A[0]}
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[1]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[2]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[3]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[4]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[5]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[6]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[7]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -f -i ${A[0]} -3 1200 1200 98 -s -a ${A[8]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
  done < ./value_range/SCALE
elif [ "$1" = "S3D" ]; then
  while read line
  do
    A=($line)
    echo ${A[0]}
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[1]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[2]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[3]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[4]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[5]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[6]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[7]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
    ../ZFP_X/bin/zfp -d -i ${A[0]} -3 500 500 500 -s -a ${A[8]} $2 $3 #-z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out 
  done < ./value_range/S3D
else
    echo "Usage: $0 <argument>" 
    echo "Examples: CESM, NYX, Miranda, Hurricane, S3D, SCALE"
    return
fi
