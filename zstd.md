>zstd 默认压缩率略高于gzip, 低于 bzip,压缩速度碾压gzip，解压比gzip略快

#### 解压
```bash
# 指定zstd
tar --zstd -xf data.tar.zst
# 根据扩展名 .zst 来自动推断压缩格式
tar -xf data.tar.zst
```

#### 压缩
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
