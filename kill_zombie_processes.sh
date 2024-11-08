# (1) 获取父进程
ps -A -ostat,ppid,pid,cmd | grep -e '^[Zz]'

#命令注解：
#    -A 参数列出所有进程 
#    -o 自定义输出字段 设定显示字段为 stat（状态）ppid（进程父id）, pid(进程id)，cmd（命令）这四个参数，
#    因为状态为 z或者Z的进程为僵尸进程，所以使用grep抓取stat状态为zZ进程

# 直接 kill -9 父进程号 或者 kill -HUP 父进程 即可

# (2) 先找到该进程号，再进入到"/proc/进程号"目录下，执行"cat status"命令可以查询到指定进程的父进程
cat /proc/[pid]/status | grep PPid   # 根据子进程号（僵尸进程）找到其父进程

# 直接 kill -9 父进程号 或者 kill -HUP 父进程 即可

# 参考自 https://www.cnblogs.com/beatle-go/p/17931296.html
