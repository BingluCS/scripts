import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import sys
#sys.argv=["test.py",'sz2',"CESM"]
#argv = sys.argv[:]
# type=sys.argv[1]
# file_name=sys.argv[2]
dataset = sys.argv[1]
filed = sys.argv[2]
if dataset == 'NYX':
    figname = 'omp-ratio-N.pdf'
else :
    figname = 'omp-ratio-M.pdf'

path_zfp = '../ratio/zfp/'+dataset+'_zfp.csv'
path_zfpx = '../ratio/omp/zfpx/'+dataset+'_zfpx.csv'
path_sz2 = '../ratio/omp/sz2/'+dataset+'_sz2.csv'
path_sz3 = '../ratio/omp/sz3/'+dataset+'_sz3.csv'


data_zfp = pd.read_csv(path_zfp)
data_zfpx = pd.read_csv(path_zfpx)
data_sz2 = pd.read_csv(path_sz2)
data_sz3 = pd.read_csv(path_sz3)

serial_zfpx = pd.read_csv('../ratio/zfpx/'+dataset+'_zfpx.csv')
serial_sz2 = pd.read_csv('../ratio/sz2/'+dataset+'_sz2.csv')
serial_sz3 = pd.read_csv('../ratio/sz3/'+dataset+'_sz3.csv')

fdata_zfp = data_zfp[data_zfp[dataset] == filed]
fdata_zfpx = data_zfpx[data_zfpx[dataset] == filed]
fdata_sz2 = data_sz2[data_sz2[dataset] == filed]
fdata_sz3 = data_sz3[data_sz3[dataset] == filed]


fserial_zfpx = serial_zfpx[serial_zfpx[dataset] == filed]
fserial_sz2 = serial_sz2[serial_sz2[dataset] == filed]
fserial_sz3 = serial_sz3[serial_sz3[dataset] == filed]

thread = [1,2,4,8,16,32,64,128,256,512,1024]
error = '1E-3'
x = np.arange(len(thread)+1)

width = 0.17
interval = width * 0.25
zfp, zfpx, sz2, sz3, ser = [], [], [], [], []
zfpx.extend(fserial_zfpx[error])
sz2.extend(fserial_sz2[error])
sz3.extend(fserial_sz3[error])
zfp.extend(fdata_zfp[error])
for i in thread:
    zfp.extend(fdata_zfp[error])
    zfpx.extend(fdata_zfpx[fdata_zfpx['threads'] == i][error])
    sz2.extend(fdata_sz2[fdata_sz2['threads'] == i][error])
    if fdata_sz3[fdata_sz3['threads'] == i][error].empty:
        sz3.extend([0])
    else:
        sz3.extend(fdata_sz3[fdata_sz3['threads'] == i][error])

thread = ['serial'] + thread

plt.yscale('symlog', linthresh=300, linscale=0.8)
p0 = plt.bar(x, sz2, width, color="#708090", edgecolor='k')
p1 = plt.bar(x + width * 1 + interval * 1, sz3, width, color="#98568d", edgecolor='k')
p2 = plt.bar(x + width * 2 + interval * 2, zfp, width,  color="#6495ED", edgecolor='k')
p3 = plt.bar(x + width * 3 + interval * 3, zfpx, width, color="#F4A460", edgecolor='k')
for i in range(len(x)):
    plt.text(x[i], sz2[i],'%d'%sz2[i], ha = 'center',va = 'bottom',fontsize=12)
    if sz3[i] != 0 :
        plt.text(x[i] + width * 1 + interval * 1, sz3[i],'%d'%sz3[i], ha = 'center',va = 'bottom',fontsize=12)
    else:
        plt.text(x[i] + width * 1 + interval * 1, sz3[i],'x', ha = 'center',va = 'bottom',fontsize=12)
    plt.text(x[i] + width * 2 + interval * 2, zfp[i],'%d'%zfp[i], ha = 'center',va = 'bottom',fontsize=12)
    plt.text(x[i] + width * 3 + interval * 3, zfpx[i],'%.1f'%zfpx[i], ha = 'center',va = 'bottom',fontsize=12)

plt.xticks(x + width * 1.5 + interval * 1.5, thread, fontsize=18)

plt.yticks(fontsize=18)
plt.xlabel('The number of threads', fontsize=20)
plt.ylabel('Compression Ratio', fontsize=22)
a=plt.legend([p0[0],p1[0]], ['SZ2','SZ3'],bbox_to_anchor=(0.00, 1.01), loc=3, frameon=False,fontsize=18)
plt.legend([p2[0],p3[0]], ['ZFP','ZFP-X'],bbox_to_anchor=(1.00,1.01), loc=4, frameon=False,fontsize=18)
plt.gca().add_artist(a)
plt.gcf().set_size_inches(20,5) 
# size = plt.gcf().get_size_inches()
plt.savefig(figname,bbox_inches='tight')