import numpy as np
import sys
import pandas as pd
from queue import Queue
#sys.argv=["test.py",'sz2',"CESM"]
#argv = sys.argv[:]
type=sys.argv[1]
file_name=sys.argv[2]
with open('./out/out_'+type+'/'+file_name, 'r') as file:
    data = file.read()

key = [file_name,'1E-1','1E-2','1E-3','1E-4','1E-5','1E-6','1E-7','1E-8']
#data_tmp = []

odata=[]
if type == 'cusz' :
    data=np.array(data.split('\n'))
    num=len(data)
    odata_queue = Queue()
    for i in range(num):
        if data[i].find('deCOMPRESSION REPORT') !=-1: 
            if odata_queue.empty() is True:
                odata.append('null')
                #data_tmp.append('null')
            else:
                odata.append(odata_queue.get())
                #data_tmp.append(odata_queue.get())
        elif data[i].find('COMPRESSION REPORT') !=-1: 
            if data[i+1].find('compression ratio') !=-1:
                odata_queue.put(data[i+1].replace('compression ratio', "").replace(' ',""))
        elif data[i].find(file_name) !=-1:
            if data[i].find('cusza') !=-1 :
                odata.append('null')
            else:
            #file_name=data[i][data[i].find('NYX/')+len('NYX/'):].replace('.f32','').replace('d64','')
                odata.append(data[i][data[i].find(file_name)+len(file_name)+1:].replace('.f32','').replace('d64',''))
else :
    data=np.array(data.split())
    num=len(data)
    for i in range(num):
        if data[i].find('ratio')!=-1:
            odata.append(data[i][data[i].find('=')+1:])
        elif data[i].find(file_name) !=-1:
            odata.append(data[i][data[i].find(file_name)+len(file_name)+1:].replace('.f32','').replace('d64',''))
    #print(data)
odata=np.array(odata).reshape(-1,9).T
data_csv = dict(zip(key,odata))
pd.DataFrame(data_csv).to_csv('./ratio/'+file_name+'_'+type+'.csv',index=False)
