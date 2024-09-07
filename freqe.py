from collections import Counter
import sys
def count_numbers_in_file(file_path):
    with open(file_path, 'r') as file:
        numbers = file.readlines()
    
    # 将每行的数字转换为整数
    numbers = numbers[:-2]
    numbers = [int(num.strip()) for num in numbers]

    # 使用Counter统计每个数字的出现频率
    number_counts = Counter(numbers)

    return number_counts

file_path = sys.argv[1]  # 替换为你的文件路径

number_counts = count_numbers_in_file(file_path)

# 输出统计结果
for number, count in number_counts.items():
    print(f"Number {number} appears {count} times")

