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
 **db：** 存放mysql，memcached数据文件  
 **log：** 存放日志  
 **www：** 存放网站数据  
 **env-example：** 默认变量变量配置文件，请复制为.env使用  
>  **注意：** 请chown赋予www文件夹**www-data**用户和用户组，以保证文件夹权限满足程序运行要求。 

### 安装
1、安装docker
2、安装docker-compose
3、下载ECjia docker源码

### 编译和运行
```bash
cd ./ECjia docker
docker-compose up --build
```

### 配置
|名称        | 值   |
| --------   | -----:  |
| 默认http\|https端口     | 81\|444 |
| 默认phpmyadmin端口     | 8081 |
| 默认mysql端口(外\|内)     | 3307\|3306 |
| 默认数据库地址     | ecjia-db |
| 默认数据库        | ecjia-daojia |
| 默认数据库账号     | ecjia |
| 默认数据库密码        |   ecjia123   |
>PS：默认是php5.6和mysql5.6版本版本，如需更改版本，请复制env-example为.env进行修改，还可修改端口，未来会增加更多变量。  
><font color=red> **php5.4** </font>版本暂不可用，请选择以上版本。

### FAQ
* 如何更改php版本，mysql版本？  
编译.env文件，修改PHP_VERSION=你要使用的php版本，MYSQL_VERSION=你要使用的mysql版本。（不建议更改mysql版本，可能会出现mysql数据不兼容丢失的问题）  
* 如何更改http，https，phpmyadmin，mysql的外部端口？  
为了避免端口冲突，http，https，phpmyadmin，mysql的端口号都不为默认值。  
你可以通过编译.env文件，修改WEB_HTTP=http端口号，WEB_HTTPS=https端口号，PHPMYADMIN_PORT=phpmyadmin端口号，MYSQL_PORT=mysql端口号。  
* 我需要调整更改php配置文件，nginx配置文件，mysql配置文件，如何修改？  
php.ini的配置文件在./services/php-fpm/目录，nginx的配置文件在./services/nginx/目录，mysql的配置文件在./services/mysql/目录。  
你只需要修改对应文件，然后重启启动容器即可。  
* 我需要配置https，如何配置，支持吗？  
支持https，你只需要：
1、将证书放入./services/nginx/ca/目录下。
2、修改.env文件CRT_NAME=crt文件名（不含后缀），KEY_NAME=key文件名（不含后缀）。



  [1]: http://backup-1251457607.cossh.myqcloud.com/1.png
