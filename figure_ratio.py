import numpy as np
import matplotlib.pyplot as plt
import matplotlib
import pandas as pd
import sys
dataset = sys.argv[1]
path_sz2 = './ratio/'+dataset+'_sz2.csv'
path_cusz = './ratio/'+dataset+'_cusz.csv'
ratio_sz2=pd.read_csv(path_sz2)
ratio_cusz=pd.read_csv(path_cusz)


index_sz2 = ratio_sz2.dtypes[ratio_sz2.dtypes!='object'].index
index_cusz = ratio_cusz.dtypes[ratio_cusz.dtypes!='object'].index

avg_sz2 = ratio_sz2[index_sz2].rdiv(1).sum().rdiv(1)*(ratio_cusz.shape[0])
num_null = ratio_cusz[index_cusz].isnull().sum()
avg_cusz = ratio_cusz[index_cusz].rdiv(1).sum().rdiv(1)*(ratio_cusz.shape[0]-num_null)
avg_cusz
avg_sz2=np.array(avg_sz2)
avg_cusz=np.array(avg_cusz)
avg_cusz,avg_sz2

#plt.yscale('log')
plt.yscale('symlog', linthresh=40, linscale=0.5)
#yticks = np.logspace(0, np.log10(10000), num=5)
yticks = [0,10,20,30,40,50,60,70,80,90,100,201,301,401,501,601,701,801,901,1000]
yticks += [int(max(avg_sz2)//100*100) if int(max(avg_sz2)//100*100) < 1000 else 0]
yticklabels = [str(ytick) if ytick < 50 or ytick %100 ==0 else '' for ytick in yticks]
plt.yticks(yticks,yticklabels)
# p0=plt.plot(X, avg_sz2,  label="SZ2",marker='o',color="#708090")
# p1=plt.plot(X, avg_cusz, label="cusz",marker='*',color="#98568d",)
width = 0.2
Xlable = ['1E-1','1E-2','1E-3','1E-4','1E-5','1E-6','1E-7','1E-8']
x1=np.arange(len(Xlable))

p0=plt.bar(x1, avg_sz2, width, label="SZ2",edgecolor='k',color="#6495ED")
p1=plt.bar(width+x1+0.04, avg_cusz, width, label="SZ3",edgecolor='k',color="#F4A460",)
plt.xticks(x1+0.5*width+0.02, Xlable, fontsize=12,rotation=30)
plt.ylabel("Compression Ratio", fontsize=20)
plt.xlabel("Value-range-based Relative Error Bound", fontsize=18)
plt.legend([p0[0],p1[0]], ['SZ2','CUSZ'],  frameon=False,fontsize=18)
plt.savefig('./ratio/'+dataset+'.pdf', bbox_inches="tight")
