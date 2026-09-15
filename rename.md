# 版本
perl::File::Rename

util-linux
# 安装
## util-linux
### conda 安装
```
conda create -n util-linux-rename-env -c conda-forge util-linux
conda activate util-linux-rename-env
rename.ul --version  # 应显示 util-linux 版本信息
```
### 源码安装
```
# 依赖
sudo apt update
sudo apt install build-essential wget
# 下载
# 以 util-linux-2.39.1 为例
wget https://cdn.kernel.org/pub/linux/utils/util-linux/v2.39/util-linux-2.39.1.tar.gz
tar xvzf util-linux-2.39.1.tar.gz
cd util-linux-2.39.1
# 配置编译
# ./configure --disable-all-programs --enable-rename
./configure --disable-su --disable-sulogin --disable-login
make rename
```
## perl::File::Rename
### conda 安装
```
# 创建一个名为 perl-rename-env 的环境，并安装 perl 版 rename
conda create -n perl-rename-env -c bioconda rename
conda activate perl-rename-env
rename --version  # 应显示 Perl 版本信息
```
