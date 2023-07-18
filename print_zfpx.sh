#
#rm -rf ../experiment_dat./ZFP-X/CESM/* ../experiment_dat./ZFP-X/Miranda/* ../experiment_dat./ZFP-X/Hu/* ../experiment_dat./ZFP-X/NYX/* 
#rm -rf ../experiment_dat./ZFP-X/SCALE/*
#do
 #A=($line)
 #echo ${A[0]}
 #../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[1]} 
 #../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[2]} 
 #../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[3]} 
 #../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[4]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[5]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[6]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[7]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -2 3600 1800 -s -a ${A[8]} 
#done < ./value_range/CESM

while read line
do
  A=($line)
  echo ${A[0]}
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[1]} 
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[2]} 
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[3]} 
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[4]} 
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[5]}
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[6]}
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[7]} 
  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 512 512 512 -s -a ${A[8]} 
done < ./value_range/NYX
#while read line
#do
#  A=($line)
#  echo ${A[0]}
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[1]} 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[2]} 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[3]} 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[4]} 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[5]} 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[6]} 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[7]} 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 384 384 256 -s -a ${A[8]} 
#done < ./value_range/Mi
#
#
#while read line
#do
#  A=($line)
#  echo ${A[0]}
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[1]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[2]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[3]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[4]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[5]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[6]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[7]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 100 -s -a ${A[8]} 
#done < ./value_range/Hu
#
#while read line
#do
#  A=($line)
#  echo ${A[0]}
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[1]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[2]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[3]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[4]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[5]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[6]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[7]} 
#  ../ZFP-X/bin/zfp -f -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 1200 1200 98 -s -a ${A[8]} 
#done < ./value_range/SCALE
#
#while read line
#do
#  A=($line)
#  echo ${A[0]}
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[1]} $1 $2 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[2]} $1 $2 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[3]} $1 $2 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[4]} $1 $2 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[5]} $1 $2 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[6]} $1 $2 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[7]} $1 $2 
#  ../ZFP-X/bin/zfp -d -i ${A[0]} -z ../com_data/zfp-x${A[0]:7}.zfp -o ../com_data/zfp-x${A[0]:7}.zfp.out -3 500 500 500 -s -a ${A[8]} $1 $2  
#done < ./value_range/S3D
