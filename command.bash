
# 显示目录下所有文件，省去ls 之类的操作
tree -f -i 
#-f            Print the full path prefix for each file.
#-i            Don't print indentation lines.


# 查看tsv 文件,宽度保持一致
column -t  input.tsv
<< COMMENT
-s sep	指定一组字符，用于分隔-t选项的列
-t	确定输入包含的列数并创建表
-n	禁用将多个相邻分隔符合并为单个分隔符行为
-c columns	输出格式化为显示columns列宽
-x	在填充行之前填充列
-e	不要忽略空白行

COMMENT


nohup rm -rf  ./*.txt >/dev/null 2>&1 &
# 1>/dev/null ：标准输出重定向到空设备文件
# 2>&1 ：将标准错误输出重定向 到 标准输出，因为之前标准输出已经重定向到了空设备文件，所以标准错误输出也重定向到空设备文件。
