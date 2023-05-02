
# 显示目录下所有文件，省去ls 之类的操作
tree -f -i 
#-f            Print the full path prefix for each file.
#-i            Don't print indentation lines.


# 查看tsv 文件,宽度保持一致
column -t  input.tsv
