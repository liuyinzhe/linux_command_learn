

################# 基本操作 ################# 
cat id | parallel echo A -i {}_in.fq -o {}_out.fq


# 参数
parallel echo ::: a b c d e
cat a.txt | parallel echo
#
 (echo 1; echo; echo 2) | parallel --no-run-if-empty echo

parallel --jobs 4 echo pre-{}-post ::: A B C D E F G
a=XX
parallel --jobs 4 echo pre-{}-post-${a} ::: A B C D E F G


# 多源头组合
parallel echo ::: A B C ::: D E F | tee b.txt
#A D
#A E
#A F
#B D
#B E

#如果命令行中包含特殊字符，就需要使用引号保护起来。
perl -e 'print "@ARGV\n"' A
# -q  保护后面的命令
parallel -q echo  perl -e 'print "@ARGV\n"' ::: This works

#--trim 去除lr 左右 空格
parallel --trim lr echo pre-{}-post ::: ' A '

# dryrun
parallel --dryrun echo {} ::: A B C

################# 进程设置 ################# 

# 默认情况下并行任务数与cpu核心数相同
time parallel -N0 sleep 1 ::: {1..128}
# 每个cpu两个任务
time parallel -N0 --jobs 200% sleep 1 ::: {1..128}
# 使用 --jobs 0 表示执行尽可能多的并行任务
time parallel -N0 --jobs 0 sleep 1 ::: {1..128}
# 基于cpu数
time parallel --use-cpus-instead-of-cores -N0 sleep 1 ::: {1..128}

# IO 短时间大量，设置 --delay 设置每个job开始的间隔
parallel --delay 2.5 echo Starting {}\;date ::: 1 2 3
# 评估时间 任务进度
parallel --eta sleep ::: 1 3 2 2 1 3 3 2 1
parallel --progress sleep ::: 1 3 2 2 1 3 3 2 1

################# 其它设置 ################# 
# 生成日志
parallel --joblog /tmp/log exit  ::: 1 2 3 0
# -0 以空格分隔内容
#- X 全部参数 空格分割 作为一个参数
find . -depth 1 \! -name '.*' -print0 | parallel -0 -X mv {} destdir

# 替代 xargs 
find . -type f -name '*.html' -print | parallel gzip

# -j+0 全部cpu +0 任务; 默认-j不设置全额cpu
ls *.gz | parallel -j+0 "zcat {} | bzip2 >{.}.bz2 && rm {}"


################# 进程设置 ################# 


占位符	含义	对 dir/file.tar.gz 的替换结果
{}	完整参数	dir/file.tar.gz
{.}	去掉最后一个扩展名	dir/file.tar
{/}	只保留文件名(basename)	file.tar.gz
{//}	只保留目录部分(dirname)	dir
{/.}	基名去掉扩展名	file.tar
{#}	任务序列号（从1开始）	（不基于输入，而是任务编号）
