import numpy as np
import sys
import pandas as pd
from queue import Queue


type_com=sys.argv[1]
file_name=sys.argv[2]
thread = [i for i in range(1,25)] + [32,64,128,256,512,1024] 

odata=[]


for nums in thread:
    out_name = './omp_outcome/'+type_com+'/%d/'%(nums)+file_name
    
    with open(out_name, 'r') as file:
        data = file.read()

    key = [file_name,'threads','1E-1','1E-2','1E-3','1E-4','1E-5','1E-6','1E-7','1E-8']
    temp = []
    if type_com == 'sz2':
        data=np.array(data.split())
        num=len(data)
        count, flag = 0, 0
        for i in range(num):
            if data[i].find('compressionRatio')!=-1:
                temp.append(data[i][data[i].find('=')+1:])
                count += 1
                if(len(temp) == 10) :
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
                temp.append(nums)
    elif type_com == 'sz3':
        data=np.array(data.split('\n'))
        num=len(data)
        count, flag, valid = 0, 0, 0
        for i in range(num):

            if data[i].find('compression ratio = ')!=-1:
                if valid == 1:
                    temp.append(data[i][data[i].find('= ')+1:])
                    count += 1
                    valid = 0
                    if(len(temp) == 10) :
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
                temp.append(nums)
    else :
        data=np.array(data.split())
        num=len(data)
        count, flag = 0, 0
        for i in range(num):
            if data[i].find('ratio')!=-1:
                temp.append(data[i][data[i].find('=')+1:])
                count += 1
                if(len(temp) == 10) :
                    odata.append(temp)
                    temp = []
            elif count / 8 == flag and data[i].find(file_name) !=-1 :
                field = data[i][data[i].find(file_name)+len(file_name)+1 : ].replace('.f32','').replace('.d64','')

                if len(odata) > 0 and odata[-1][0] == field:
                    continue
                else:
                    flag += 1
                    temp.append(field)
                    temp.append(nums)
        #print(data)
odata=np.array(odata).reshape(-1,10).T
odata
odata = dict(zip(key,odata))

ratio_pd = pd.DataFrame(odata)
# ratio_pd
ratio_pd.iloc[:, 1] = ratio_pd.iloc[:, 1].astype(int)
ratio_pd.iloc[:, 2:] = ratio_pd.iloc[:, 2:].astype(float)
ratio_pd = ratio_pd.groupby([file_name,'threads']).mean().reset_index()

# data_csv = dict(zip(key,odata))
ratio_pd.to_csv('./ratio/omp/'+type_com+'/'+file_name+'_'+type_com+'.csv',index=False)