from collections import Counter
import sys
with open(sys.argv[1], 'r') as file:
    lines = file.readlines()

def shift(best):
    best[2] = best[1]
    best[1] = best[0]
# 初始化一个列表来存储差值
differences = []
each = []
# 遍历每一行，计算差值并添加到列表中
for i in range(0, len(lines) - 2):
    each.append(int(lines[i]))

each_counter = Counter(each)
for diff, count in each_counter.items():
    print(f"each {diff}: {count} times")
n1 = 0
n2 = 0
p = 0
q = 0
best = [[-1,0],[-1,0],[-1,0]]
for diff, count in each_counter.items():
    n1 += (diff+1)*count
    p += count

n2 = p*8
x, y = 128, 128

for i in range(128):
    p, q = 0, 0
    for diff, count in each_counter.items():
        if diff > i:
            p += count
        else:
            q += (diff+1)*count
    total = p*(i+1+8)+q
    if(total <= n2):
        shift(best)
        n2 = total
        best[0] = [i,total]
	
print(n1,best)
