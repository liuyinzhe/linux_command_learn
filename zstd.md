>zstd 默认压缩率略高于gzip, 低于 bzip,压缩速度碾压gzip，解压比gzip略快

```bash
zstd --help
使用方式 :
      zstd [args] [FILE(s)] [-o file]
参数选项 :
 -#     : 压缩级别(1-19，默认值为3)
 -d     : 解压
 -D file: 使用文件作为字典
 -o file: 结果存储在文件中
 -f     : 在没有提示的情况下覆盖输出并(解压)压缩链接
--rm    : 成功解压缩后删除源文件
 -k     : 保存源文件(默认)
 -h/-H  : 显示帮助/长帮助并退出

高级选项 :
 -V     : 显示版本号并退出
 -v     : 详细模式
 -q     : 静默输出
 -c     : 强制写入标准输出
 -l     : 输出zstd压缩包中的信息
--ultra : 启用超过19级，最多22级(需要更多内存)
 -T#    : 使用几个线程进行压缩(默认值:1个)
 -r     : 递归地操作目录
--format=gzip : 将文件压缩为.gz格式
 -M#    : 为解压设置内存使用限制
```


#### 文件压缩
```bash
# 默认情况下，源文件在成功压缩或解压缩后不会被删除
zstd file
# 在压缩操作后删除源文件
zstd --rm file
```

#### 文件解压
```bash
# 解压zst压缩包
zstd -d file.zst
# 解压zst压缩包到标准输出
zstd -dc file.zst
```

#### 查看zst压缩包
```bash
# 查看文件名
zstd -l file.zst
# 查看文件内容
zstdcat file.zst
```

#### 高级用法
```bash
# 输出详细信息
zstd -v file
zstd -v -d file.zst
# 压缩一个文件同时指定压缩级别(19最高，0最低，3为默认)
zstd -9 file
# --long[=#]: enable long distance matching with given window log (default: 27) 
# --fast[=#]: switch to very fast compression levels (default: 1) 
zstd --fast file
zstd --long file

# 使用更多的内存(压缩和解压时)以达到更高的压缩比
#--ultra : enable levels beyond 19, up to 22 (requires more memory) 
zstd --ultra -19 file
# 解压缩为单进程
# 多个进程并发执行压缩过程(0表示自动使用所有CPU核心)
zstd -T0 file
zstd -T4 file
zstd -T4 -d file.zst
```

#### tar解压
```bash
# 指定zstd
tar --zstd -xf data.tar.zst
# 根据扩展名 .zst 来自动推断压缩格式
tar -xf data.tar.zst
```

#### tar压缩
```bash
# 指定zstd
tar --zstd -cf data.tar.zst data_to_compress
# 通过 -a 选项可以让 tar 根据扩展名来自动推断压缩格式
tar -caf data.tar.zst data_to_compress
```

#### 压缩率
```bash
# ZSTD_CLEVEL 环境变量,范围 1-19,默认值是 3;
# 值越大，压缩率越高
ZSTD_CLEVEL=10 
tar -caf data.tar.zst data_to_compress
```
