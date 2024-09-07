# while read line
# do 
#  A=($line)
#  echo ${A[0]}
#  ../cusz/build/cusz -t f32 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time 
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 512x512x512 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
# done < ./value_range/NYX

# while read line
# do 
#  A=($line)
#  echo ${A[0]}
#  ../cusz/build/cusz -t f32 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  ../cusz/build/cusz -t f32 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#  echo ../cusz/build/cusz -t f32 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 3600x1800 -z --report time
#  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
# done < ./value_range/CESM

# while read line
# do 
#   A=($line)
#   echo ${A[0]}
#   ../cusz/build/cusz -t f32 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#   ../cusz/build/cusz -t f32 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#   ../cusz/build/cusz -t f32 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#   ../cusz/build/cusz -t f32 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#   ../cusz/build/cusz -t f32 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#   ../cusz/build/cusz -t f32 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 6
#   ../cusz/build/cusz -t f32 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
#   ../cusz/build/cusz -t f32 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 500x500x100 -z --report time
#   ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time 
# done < ./value_range/Hurricane

while read line
do 
  A=($line)
  echo ${A[0]}                                                                                     
  ../cusz/build/cusz -t d64 -m abs -e ${A[1]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   
  ../cusz/build/cusz -t d64 -m abs -e ${A[2]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   
  ../cusz/build/cusz -t d64 -m abs -e ${A[3]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   
  ../cusz/build/cusz -t d64 -m abs -e ${A[4]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   
  ../cusz/build/cusz -t d64 -m abs -e ${A[5]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   
  ../cusz/build/cusz -t d64 -m abs -e ${A[6]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   
  ../cusz/build/cusz -t d64 -m abs -e ${A[7]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                  
  ../cusz/build/cusz -t d64 -m abs -e ${A[8]} -i ../data_cu${A[0]:7} -l 384x384x256 -z --report time 
  ../cusz/build/cusz -i ../data_cu${A[0]:7}.cusza -x --report time                                   
done < ./value_range/Miranda
