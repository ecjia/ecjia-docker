### 倒入初始化安装数据
#/bin/bash
echo '正在导入基础安装数据库数据'
mysql -uroot -p ecjia-daojia < '/tmp/ecjiademo_daojia.sql.gz'
echo '导入基础安装数据库数据成功'