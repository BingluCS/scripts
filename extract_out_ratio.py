import numpy as np
import sys
import pandas as pd
from queue import Queue
#sys.argv=["test.py",'sz2',"CESM"]
#argv = sys.argv[:]
type=sys.argv[1]
file_name=sys.argv[2]
# type = 'zfpx'
# file_name = 'NYX'
with open('./outcome/'+type+'/'+file_name, 'r') as file:
    data = file.read()

key = [file_name,'1E-1','1E-2','1E-3','1E-4','1E-5','1E-6','1E-7','1E-8']
#data_tmp = []
temp = []
odata=[]
if type == 'sz2' :
    data=np.array(data.split('\n'))
    num=len(data)
    count, flag = 0, 0
    for i in range(num):
        if data[i].find('compressionRatio')!=-1:
            temp.append(data[i][data[i].find('=')+1:])
            count += 1
            if(len(temp) == 9) :
                odata.append(temp)
                temp = []
        elif count / 8 == flag and data[i].find(file_name) !=-1 :
            if ('.f32' in data[i]) :
                field = data[i][data[i].find(file_name)+len(file_name)+1 : data[i].find('.f32')]
            elif ('.d64' in data[i]) :
                field = data[i][data[i].find(file_name)+len(file_name)+1 : data[i].find('.d64')]
            else :
                continue
            if len(odata) > 0 and odata[-1][0] == field:
                continue
            flag += 1
            temp.append(field)
elif type == 'sz3':
    data=np.array(data.split('\n'))
    num=len(data)
    count, flag, valid = 0, 0, 0
    for i in range(num):
        if data[i].find('compression ratio = ')!=-1:
            if valid == 1:
                temp.append(data[i][data[i].find('= ')+1:])
                count += 1
                valid = 0
                if(len(temp) == 9) :
                    odata.append(temp)
                    temp = []
            else:
                valid = 1
        elif count / 8 == flag and data[i].find(file_name) !=-1:
            if ('.f32' in data[i]) :
                field = data[i][data[i].find(file_name)+len(file_name)+1 : data[i].find('.f32')]
            elif ('.d64' in data[i]) :
                field = data[i][data[i].find(file_name)+len(file_name)+1 : data[i].find('.d64')]
            else :
                continue
            # field = data[i][data[i].find(file_name)+len(file_name)+1 : ].replace('.f32','').replace('.d64','')\
            #     .replace('.sz','').replace('.out','')
            # field = field[:field.find('.')]
            if len(odata) > 0 and odata[-1][0] == field:
                continue
            flag += 1
            temp.append(field)
else :
    data=np.array(data.split())
    num=len(data)
    count, flag = 0, 0
    for i in range(num):
        if data[i].find('ratio')!=-1:
            odata.append(data[i][data[i].find('=')+1:])
            count += 1
        elif count / 8 == flag and data[i].find(file_name) !=-1 :
            flag += 1
            field = data[i][data[i].find(file_name)+len(file_name)+1:].replace('.f32','').replace('.d64','')
            if field in odata:
                break
            else:
                odata.append(field)
    #print(data)
odata=np.array(odata).reshape(-1,9).T
data_csv = pd.DataFrame(dict(zip(key,odata)))
data_csv.iloc[:, 1:] = data_csv.iloc[:, 1:].astype(float)
# data_csv['1E-1'][0]
data_csv = data_csv.groupby([file_name]).mean().reset_index()
data_csv.to_csv('./ratio/'+type+'/'+file_name+'_'+type+'.csv',index=False)