if [ $# -eq 0 ]; then
    echo "Usage: $0 <argument>"
    echo "Examples: CESM, NYX, Miranda, Hurricane, S3D, SCALE"
    return
fi

rm -rf ../com_data/sz3/CESM/* ../com_data/sz3/Miranda/* ../com_data/sz3/Hu/* ../com_data/sz3/NYX/* 
rm -rf ../com_data/sz3/SCALE/*

if [ "$1" = "NYX" ]; then
  while read line
  do
    A=($line)
    echo ${A[0]}
    echo ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[1]} $2 $3
    echo ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[1]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[2]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[3]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[4]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[5]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[6]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[7]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[8]} $2 $3
    ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz3${A[0]:7}.sz -a
  done < ./value_range/NYX
elif [ "$1" = "Miranda" ]; then
  while read line
   do
    A=($line)
    echo ${A[0]}
    echo ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[1]} $2 $3
    echo ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[1]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[2]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[3]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[4]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[5]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[6]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[7]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
    ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[8]} $2 $3
    ../SZ3/build/bin/sz3 -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz3${A[0]:7}.sz -a
  done < ./value_range/Miranda
elif [ "$1" = "Hurricane" ]; then  
  while read line
  do
   A=($line)
   echo ${A[0]}
   echo ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[1]} $2 $3
   echo ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[1]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[2]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[3]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[4]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[5]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[6]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[7]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[8]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz3${A[0]:7}.sz -a
  done < ./value_range/Hurricane
elif [ "$1" = "CESM" ]; then  
  while read line
  do
   A=($line)
   echo ${A[0]}
   echo ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[1]} $2 $3
   echo ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[1]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[2]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[3]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[4]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[5]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[6]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[7]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[8]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz3${A[0]:7}.sz -a
  done < ./value_range/CESM
elif [ "$1" = "SCALE" ]; then  
  while read line
  do
   A=($line)
   echo ${A[0]}
   echo ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[1]} $2 $3
   echo ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[1]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[2]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[3]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[4]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[5]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[6]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[7]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
   ../SZ3/build/bin/sz3 -z ../com_data/sz3${A[0]:7}.sz -f -i ${A[0]} -3 1200 1200 98 -M ABS -A ${A[8]} $2 $3
   ../SZ3/build/bin/sz3 -x -f -i ${A[0]} -3 1200 1200 98 -s ../com_data/sz3${A[0]:7}.sz -a
  done < ./value_range/SCALE
else
    echo "Usage: $0 <argument>" 
    echo "Examples: CESM, NYX, Miranda, Hurricane, S3D, SCALE"
    return
fi
