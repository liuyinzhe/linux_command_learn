
# user
quota -uvs user_name

# 解释
#space  15360G* # 当前使用的占用大小，注意这里
#quota  13824G  # 软限制，提供缓冲时间
#limit  15360G  # 硬限制，软限制超时未降低占用， 文件无法编辑写入，报错 Disk quota exceeded
#grace  None    # 缓冲时间，6days 或者None，已经被限制使用
#files  3220k   # 文件占用个数



# user group
quota -gvs user_name
