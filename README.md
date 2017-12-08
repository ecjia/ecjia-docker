# 简介
ECjia docker使用docker搭建web服务。
高效，快速，五分钟即可搭建服务。

### 框架
![ECjia docker][1]
 **services：** 存放nginx,php-fpm,mysql,memcached,phpmyadmin配置文件  
    - ```nginx：nginx.conf为nginx配置文件，ca为存放ca证书目录```  
    - ```php-fpm：存放Dockerfile和php.ini配置```  
    - ```mysql：存放my.cnf配置文件```  
    - ```memcached：存放memcached Dockerfile```  
 **db：** 存放mysql数据文件  
 **www：** 存放网站数据  
 **env-example：** 默认变量变量配置文件，请复制为.env使用  
>  **注意：** 请chown赋予www文件夹**www-data**用户和用户组，以保证文件夹权限满足程序运行要求。 

### 安装
1、安装docker
2、安装docker-compose
3、下载ECjia docker源码

### 编译和运行
```bash
cd ./Ecjia docke
docker-compose build
docker-compose up
```

### 配置
|名称        | 值   |
| --------   | -----:  |
| 默认数据库账号     | root |
| 默认数据库密码        |   ecjia@password   |
| 默认数据库        |    ecjia    |
>PS：默认是php5.6和mysql5.6版本版本，如需更改版本，请修改env-example文件，复制为.env，还可以更改端口。  
><font color=red> **php5.4** </font>版本暂不可用，请选择以上版本。


  [1]: http://backup-1251457607.cossh.myqcloud.com/1.png