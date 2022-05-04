import os
import sys

files_to_proc=['trainval','test']

for t in files_to_proc:
    txt_path=t+'.txt'
    tmp=[]
    with open(txt_path,'r') as f:
        tmp=f.readlines()
    tmp=[i.split('\\')[-1].split('.')[0] for i in tmp]
    # for i in tmp:
    #     n=i.spilt('\\')[-1]
    #     n=n.split('.')[0]

    with open(txt_path,'w') as f:
        f.write('\n'.join(tmp))
        # f.write(tmp.join('\n'))
