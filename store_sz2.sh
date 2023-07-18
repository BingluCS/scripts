rm -rf ./ratio/ratio_sz2/NYX 
while read line
do
  A=($line)
  echo ${A[0]}
  echo ${A[0]}                                                                                    &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[1]} &>> ./ratio/ratio_sz2/NYX 
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[2]} &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[3]} &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[4]} &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[5]} &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[6]} &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[7]} &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 512 512 512 -M ABS -A ${A[8]} &>> ./ratio/ratio_sz2/NYX
  ../SZ2/example/sz -x -f -i ${A[0]} -3 512 512 512 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/NYX
done < ./value_range/NYX
#rm -rf ./ratio/ratio_sz2/Miranda
# while read line
# do
#  A=($line)
#  echo ${A[0]}
#  echo ${A[0]}                                                                                    &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[1]} &>> ./ratio/ratio_sz2/Miranda 
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[2]} &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[3]} &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[4]} &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[5]} &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[6]} &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[7]} &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -d -i ${A[0]} -3 384 384 256 -M ABS -A ${A[8]} &>> ./ratio/ratio_sz2/Miranda
#  ../SZ2/example/sz -x -d -i ${A[0]} -3 384 384 256 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Miranda
# done < ./value_range/Miranda
rm -rf ./ratio/ratio_sz2/Hurricane 
while read line
do
 A=($line)
 echo ${A[0]}
 echo ${A[0]}                                                                                    &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[1]} &>> ./ratio/ratio_sz2/Hurricane 
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[2]} &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[3]} &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[4]} &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[5]} &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[6]} &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[7]} &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -3 500 500 100 -M ABS -A ${A[8]} &>> ./ratio/ratio_sz2/Hurricane
 ../SZ2/example/sz -x -f -i ${A[0]} -3 500 500 100 -s ../com_data/sz2${A[0]:7}.sz -a             &>> ./ratio/ratio_sz2/Hurricane
done < ./value_range/Hurricane
rm -rf ./ratio/ratio_sz2/CESM 
while read line
do
 A=($line)
 echo ${A[0]}
 echo ${A[0]}                                                                                   &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[1]}  &>> ./ratio/ratio_sz2/CESM 
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[2]}  &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[3]}  &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[4]}  &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[5]}  &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[6]}  &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[7]}  &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -z ../com_data/sz2${A[0]:7}.sz -f -i ${A[0]} -2 3600 1800 -M ABS -A ${A[8]}  &>> ./ratio/ratio_sz2/CESM
 ../SZ2/example/sz -x -f -i ${A[0]} -2 3600 1800 -s ../com_data/sz2${A[0]:7}.sz -a              &>> ./ratio/ratio_sz2/CESM
done < ./value_range/CESM
