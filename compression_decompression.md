

### bz2
>xz [选项] 文件名  
选项：  
-c       将压缩的过程产生的数据输出到屏幕上  
-d       解压缩文件  
-k       保留原始文件  
-z       压缩文件  
-v       显示压缩或解压缩的信息  
-f       强制覆盖输出文件并压缩链接  
-1 到 -9 指定压缩级别，数字越大，压缩比越高，但耗费的时间也越长  

#### compression
```bash
bzip2 -k file
```
#### decompression
```bash
bzip2 -dk file.bz2
bzcat file.bz2 >file
```


### xz
>xz [选项] 文件名  
选项  
-d       解压缩文件  
-t       测试文件的完整性  
-l       列出压缩文件的相关信息  
-k       保留原本的文件不删除  
-v       显示压缩或解压缩的信息  
-c       和之前两个解压缩命令一样，就是将数据在屏幕上输出  
-1 到 -9 指定压缩级别，数字越大，压缩比越高，但耗费的时间也越长  

#### compression
```bash
xz -k file
```
#### decompression
```bash
xz  -dk file.xz
xzcat file.xz >file
```
## tar
> -c, --create               create a new archive  
  -j, --bzip2                filter the archive through bzip2  
  -J, --xz                   filter the archive through xz  
      --lzip                 filter the archive through lzip  
      --lzma                 filter the archive through lzma    
      --lzop  
      --no-auto-compress     do not use archive suffix to determine the compression program  
  -z, --gzip, --gunzip, --ungzip   filter the archive through gzip  compression program  
  -v, --verbose              verbosely list files processed  


### *.tar.bz2  
#### compression  
```
tar -jcvf archive_name.tar.bz2 archive_name
```
#### decompression
```bash
tar -xjf samtools-1.18.tar.bz2
```

### *.tar.zx  
#### compression  
```
tar -Jcvf archive_name.tar.zx archive_name
```
#### decompression
```bash
tar -xJf archive_name.tar.zx
```
