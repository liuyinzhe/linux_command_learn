/data/software/ossutil-v1.7.15-linux-amd64/ossutil64  sync \
  -c .ossutilconfig \
  -f \
  oss://xxxxxxxxxxx/data/test \
  /data/rawdata/  >log 2>err


# .ossutilconfig

#[Credentials]
#language=CH
#accessKeyID=xxxxxxxxxxxxxxxxxxxxxxx
#accessKeySecret=xxxxxxxxxxxx
#endpoint=oss-cn-shanghai.aliyuncs.com #oss-cn-beijing.aliyuncs.com
