
#resume from break-point
rsync -alhP -r user@${ip}:/home/xxx/database/ /mnt/data/database/ >log 2>err 
#服务器将默认的SSH端口改成了别的如9527
rsync -alhP -e 'ssh -p 9527' -r user@${ip}:/home/xxx/database/ /mnt/data/database/ >log 2>err 
# ctrl + z 暂停任务
# jobs#bg %1 # #fg %1
# disown -h %1
# or 
# nohup rsync -alhP -r ${ip}:/home/xxx/database/ /mnt/data/database/ >log 2>err  & disown

# 迭代目录
#    -r, --recursive             recurse into directories

# 保留部分传输的文件，以实现断点续传
#    --partial               keep partially transferred files
#    --partial-dir=DIR       put a partially transferred file into DIR


# -v, --verbose               increase verbosity

# # 归档模式（保留文件权限、保存文件时间信息、保留文件属组信息、保持文件属主信息、保持设备文件信息、保留软链接）
#  -a, --archive               archive mode; equals -rlptgoD (no -H,-A,-X)

# # 保持软连接
# -l, --links                 copy symlinks as symlinks
# # 将被覆盖的链接视为目录 #追踪软连接的目录进行覆盖（被覆盖目录中的软连接不在覆盖目录内，追踪软连源头覆盖，谨慎使用）
# -K, --keep-dirlinks         treat symlinked dir on receiver as dir


# # 输出
# -h, --human-readable        output numbers in a human-readable format
#     --progress              show progress during transfer
# # 显示进度
# -P                          same as --partial --progress
# # 保持原有权限属性
# -p, --perms                 preserve permissions
# # 静默模式
#  -q, --quiet                 suppress non-error messages
# # 排除文件 
# --exclude=PATTERN       exclude files matching PATTERN
# # --exclude='.git'
# # 排除文件列表
# --exclude-from=FILE     read exclude patterns from FILE

# # 包含文件 
# --include=PATTERN       don't exclude files matching PATTERN
# # 包含文件指定
# --include-from=FILE     read include patterns from FILE
# # 指定文件同步列表
# --files-from=FILE       read list of source-file names from FILE

# # 在传输时压缩，节省带宽，加快传输速度
# -z, --compress              compress file data during the transfer
#     --compress-level=NUM    explicitly set compression level
#     --skip-compress=LIST    skip compressing files with a suffix in LIST

# # 在源服务器上做的删除操作也会在目标服务器上同步，谨慎使用
# --delete                delete extraneous files from destination dirs

# # 一般不要用
# -A, --acls                  preserve ACLs (implies --perms)
# -X, --xattrs                preserve extended attributes
# -H, --hard-links            preserve hard links
