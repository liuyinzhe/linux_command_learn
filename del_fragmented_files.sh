mkdir block
rsync --delete-before -a -H block/ target_del/
#block 空文件
#target_del 要删除全部内容的文件夹

#没啥用,这里时删除,同步属性#-a, --archive               archive mode; equals -rlptgoD (no -H,-A,-X)
#没啥用,这里时删除,同步硬链接#-H, --hard-links            preserve hard links

# 打算在文件夹内删除时，避免ls 过多文件才进行删除，可以提速
#ls | xargs -n 10 rm -fr {}
# -n 每组10个文件名传给 rm -fr {}
