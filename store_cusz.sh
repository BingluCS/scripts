rm -rf ./ratio/ratio_cusz/NYX
while read line
do 
 A=($line)
 echo ${A[0]}
 echo ${A[0]}                                                                                       &>> ./ratio/ratio_cusz/NYX  
 ../cusz/build/cusz -t f32 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -t f32 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -t f32 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -t f32 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -t f32 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -t f32 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -t f32 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -t f32 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time &>> ./ratio/ratio_cusz/NYX
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/NYX
done < ./value_range/NYX
rm -rf ./ratio/ratio_cusz/CESM
while read line
do 
 A=($line)
 echo ${A[0]} 
 echo ${A[0]}                                                                                     &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -t f32 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time &>> ./ratio/ratio_cusz/CESM
 ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                 &>> ./ratio/ratio_cusz/CESM
done < ./value_range/CESM
rm -rf ./ratio/ratio_cusz/Hurricane
while read line
do 
  A=($line)
  echo ${A[0]}  
  echo ${A[0]}                                                                                       &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -t f32 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time &>> ./ratio/ratio_cusz/Hurricane
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Hurricane
done < ./value_range/Hurricane
rm -rf ./ratio/ratio_cusz/Miranda
while read line
do 
  A=($line)
  echo ${A[0]}  
  echo ${A[0]}                                                                                       &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -t d64 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time &>> ./ratio/ratio_cusz/Miranda
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   &>> ./ratio/ratio_cusz/Miranda
done < ./value_range/Miranda
