
#resume from break-point

rsync -P -r ${ip}:/home/xxx/database/ /mnt/data/database/

# -r, --recursive             recurse into directories
#-P                          same as --partial --progress

#     --partial               keep partially transferred files #续传关键参数
#     --partial-dir=DIR       put a partially transferred file into DIR
#     --progress              show progress during transfer
