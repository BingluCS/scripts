import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import sys

dataset = sys.argv[1]
if dataset == 'Hurricane':
    size = 500 * 500 * 100 * 4 * 20 / 1024 /1024
    figname = 'omp-throughput-H.pdf'
else :
    size = 1200 * 1200 * 98 * 4 * 12 / 1024 / 1024
    figname = 'omp-throughput-S.pdf'

path_zfp = '../time/omp/zfp/'+dataset+'_zfp_com.csv'
path_zfpx = '../time/omp/zfpx/'+dataset+'_zfpx_com.csv'
path_sz2 = '../time/omp/sz2/'+dataset+'_sz2_com.csv'
path_sz3 = '../time/omp/sz3/'+dataset+'_sz3_com.csv'


data_zfp = pd.read_csv(path_zfp)
data_zfpx = pd.read_csv(path_zfpx)
data_sz2 = pd.read_csv(path_sz2)
data_sz3 = pd.read_csv(path_sz3)

fdata_zfp = data_zfp.iloc[:, 1:]
fdata_zfpx = data_zfpx.iloc[:, 1:]
fdata_sz2 = data_sz2.iloc[:, 1:]
fdata_sz3 = data_sz3.iloc[:, 1:]

fdata_zfp = fdata_zfp.groupby('threads').sum().reset_index()
fdata_zfpx = fdata_zfpx.groupby('threads').sum().reset_index()
fdata_sz2 = fdata_sz2.groupby('threads').sum().reset_index()
fdata_sz3 = fdata_sz3.groupby('threads').sum().reset_index()

fdata_zfp.iloc[:,1:] = size / fdata_zfp.iloc[:,1:]
fdata_zfpx.iloc[:,1:] = size / fdata_zfpx.iloc[:,1:]
fdata_sz2.iloc[:,1:] = size / fdata_sz2.iloc[:,1:]
fdata_sz3.iloc[:,1:] = size / fdata_sz3.iloc[:,1:]

width = 0.17
interval = width * 0.25
thread = [2,4,8,12,16,20,22]
x = np.arange(len(thread))
zfp, zfpx, sz2, sz3 = [], [], [], []
ser = []
error = '1E-3'
for i in thread:
    zfp.extend(fdata_zfp[fdata_zfp['threads'] == i][error])
    zfpx.extend(fdata_zfpx[fdata_zfpx['threads'] == i][error])
    sz2.extend(fdata_sz2[fdata_sz2['threads'] == i][error])
    sz3.extend(fdata_sz3[fdata_sz3['threads'] == i][error])

p0 = plt.plot(x, sz2, linewidth=6, marker='o', markersize=12, color="#56ae57")
p1 = plt.plot(x, sz3, linewidth=6, marker='*', markersize=12, color="red", linestyle='--', dashes=(2.5, 3))
p2 = plt.plot(x, zfp, linewidth=6, marker='^', markersize=12, color="#1E90FF")
p3 = plt.plot(x, zfpx, linewidth=6, marker='v', markersize=12, color="#FFA500")

# plt.xticks(x + width * 1.5 + interval * 1.5, thread, fontsize=18)
plt.xticks(x, thread, fontsize=18)
plt.yticks(fontsize=18)
plt.xlabel('The number of threads', fontsize=20)
plt.ylabel('Compression Throughput (MB/S)', fontsize=22)
a=plt.legend([p0[0],p1[0]], ['SZ2','SZ3'],bbox_to_anchor=(0.00, 1.01), loc=3, frameon=False,fontsize=18)
plt.legend([p2[0],p3[0]], ['ZFP','ZFP-X'],bbox_to_anchor=(1.00,1.01), loc=4, frameon=False,fontsize=18)
plt.gca().add_artist(a)
plt.gcf().set_size_inches(8,4.8) 
# size = plt.gcf().get_size_inches()
plt.savefig(figname,bbox_inches='tight')