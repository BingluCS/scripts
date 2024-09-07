import numpy as np
import sys
import pandas as pd
from queue import Queue

type_com=sys.argv[1]
file_name=sys.argv[2]
# if len(sys.argv) == 3:
#     thread_num = sys.argv[3]
thread = [i for i in range(1,25)] + [32,64,128,256,512,1024]
thread = [1] + [i for i in range(2,25,2)]
com_time = []
decom_time = []
for nums in thread:
    out_name = './omp_outcome/'+type_com+'/%d/'%(nums)+file_name
    with open(out_name, 'r') as file:
        data = file.read()
    temp_com, temp_decom = [], []
    key = [file_name,'threads','1E-1','1E-2','1E-3','1E-4','1E-5','1E-6','1E-7','1E-8']

    if type_com == 'sz3' or  type_com == 'sz2':
        data = np.array(data.split('\n'))
        num = len(data)
        count, flag = 0, 0
        for i in range(num):
            if 'compression time' in data[i] and 'decompression time' not in data[i]:
                temp_com.append(data[i][data[i].find('= ')+1:])
                count += 1
                if(len(temp_com) == 10) :
                    com_time.append(temp_com)
                    temp_com = []
            elif data[i].find('decompression time')!=-1:
                temp_decom.append(data[i][data[i].find('= ')+1:].split()[0])
                if(len(temp_decom) == 10) :
                    decom_time.append(temp_decom)
                    temp_decom = []
            elif count / 8 == flag and data[i].find(file_name) !=-1:
                if ('.f32' in data[i]) :
                    field = data[i][data[i].find(file_name)+len(file_name)+1 : data[i].find('.f32')]
                elif ('.d64' in data[i]) :
                    field = data[i][data[i].find(file_name)+len(file_name)+1 : data[i].find('.d64')]
                else :
                    continue
                if len(com_time) > 0 and com_time[-1][0] == field:
                    continue
                else: 
                    flag += 1
                    temp_com.append(field)
                    temp_com.append(nums)
                    temp_decom.append(field)
                    temp_decom.append(nums)
    else :
        data = np.array(data.split())
        num = len(data)
        count, flag = 0, 0
        for i in range(num):
            if data[i].find('Compression_time')!=-1:
                com_time.append(data[i][data[i].find('=')+1:])
                count += 1
            elif data[i].find('Decompression_time')!=-1:

                decom_time.append(data[i][data[i].find('=')+1:])
            elif count / 8 == flag and data[i].find(file_name) !=-1:
                flag += 1
                field = data[i][data[i].find(file_name)+len(file_name)+1:].replace('.f32','').replace('.d64','')
                com_time.append(field)
                com_time.append(nums)
                decom_time.append(field)
                decom_time.append(nums)

com_time=np.array(com_time).reshape(-1,10).T
decom_time=np.array(decom_time).reshape(-1,10).T

com_time = dict(zip(key,com_time))

com_time_pd = pd.DataFrame(com_time)
com_time_pd.iloc[:, 1] = com_time_pd.iloc[:, 1].astype(int)
com_time_pd.iloc[:, 2:] = com_time_pd.iloc[:, 2:].astype(float)
com_time_pd = com_time_pd.groupby([file_name,'threads']).mean().reset_index()

decom_time = dict(zip(key,decom_time))
decom_time_pd = pd.DataFrame(decom_time)
decom_time_pd.iloc[:, 2:] = decom_time_pd.iloc[:, 2:].astype(float)
decom_time_pd.iloc[:, 1] = decom_time_pd.iloc[:, 1].astype(int)
decom_time_pd = decom_time_pd.groupby([file_name,'threads']).mean().reset_index()

com_time_pd.to_csv('./time/omp/'+type_com+'/'+file_name+'_'+type_com+'_com'+'.csv',index=False)
decom_time_pd.to_csv('./time/omp/'+type_com+'/'+file_name+'_'+type_com+'_decom'+'.csv',index=False)