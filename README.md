# 简介
> ECjia docker使用docker搭建web服务。  
高效，快速，五分钟即可搭建服务。

## 框架
![ECjia docker][1]
 **services：** 存放nginx,php-fpm,mysql,memcached,phpmyadmin配置文件  
    - `nginx`：nginx.conf为nginx配置文件，ca为存放ca证书目录  
    - `php-fpm`：存放Dockerfile和php.ini配置  
    - `mysql`：存放my.cnf配置文件  
    - `memcached`：存放memcached Dockerfile  
 **db：** 存放mysql，memcached数据文件  
 **log：** 存放日志  
 **www：** 存放网站数据  
 **env-example：** 默认变量变量配置文件，请复制为.env使用     

## 安装
1、[安装docker][2]，[配置镜像加速器][3]  
2、[安装docker-compose][4]  
3、下载或者拉取ECjia docker源码
```
git clone -b zhangchunchen https://gitee.com/ecjia/ecjia-docker.git
```

## 编译和运行
```bash
cd ./ECjia docker    #进入程序目录
docker-compose up --build    #编译并启动
```

## 配置
|名称        | 值   |
| --------   | -----:  |
| 默认http\|https端口     | 81\|444 |
| 默认phpmyadmin端口     | 8081 |
| 默认mysql端口(外\|内)     | 3307\|3306 |
| 默认数据库地址     | ecjia-db |
| 默认数据库        | ecjia-daojia |
| 默认数据库账号     | ecjia |
| 默认数据库密码        |   ecjia123   |  
> 目前支持php5.4-php7.2，未来php5.4将不受支持，默认php版本为5.6。  

其中默认端口可以通过修改**env-example**文件来调整，请复制env-example为**.env**进行修改。  
[**env-example**][5]为环境变量文件，可通过修改对应变量来调整程序配置，详情见[wiki][6]。

## [FAQ][7]
* 如何运行该程序？  
1.你需要在操作系统上安装docker和docker-Compose，您可以参考[WIKI][8]进行安装；  
2.下载和拉取源码；  
3.运行程序。  
更多问题和疑惑可前往[FAQ详情][9]页面查看。


  [1]: http://backup-1251457607.cossh.myqcloud.com/1.png
  [2]: https://gitee.com/ecjia/ecjia-docker/wikis/%E5%AE%89%E8%A3%85docker
  [3]: https://gitee.com/ecjia/ecjia-docker/wikis/%E9%85%8D%E7%BD%AE%E9%95%9C%E5%83%8F%E5%8A%A0%E9%80%9F%E5%99%A8
  [4]: https://gitee.com/ecjia/ecjia-docker/wikis/Docker-Compose
  [5]: https://gitee.com/ecjia/ecjia-docker/wikis/env-example
  [6]: https://gitee.com/ecjia/ecjia-docker/wikis/env-example
  [7]: https://gitee.com/ecjia/ecjia-docker/wikis/FAQ
  [8]: https://gitee.com/ecjia/ecjia-docker/wikis
  [9]: https://gitee.com/ecjia/ecjia-docker/wikis/FAQ