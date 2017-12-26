# 简介
> **ecjia docker**基于docker部署web服务，采用lnmp主流架构，memcached做缓存，phpmyadmin轻松管理数据库。  
高效，快速，只需要一碗泡面的时间，即可启动服务，可快速切换php版本。  
<font size=3%><B>更多介绍请前往：[here](https://gitee.com/ecjia/ecjia-docker/wikis/%E6%A1%86%E6%9E%B6%E4%BB%8B%E7%BB%8D)</B></font>

## 运行
### 环境安装配置
本程序可以在Windows Linux OSX三个操作系统下运行，只需要docker和docker-compose组件。  
关于如何安装docker和docker-compose，点击以下链接有详细安装教程：
 - [Windows安装docker][1]
 - [Linux安装docker][2]
 - [OSX安装docker][3]
 - [安装docker-coose][4]  
因为国内访问hub.docker.com速度很慢甚至不可用，后续拉取Docker镜像十分缓慢，导致启动程序缓慢。  
强烈建议安装Docker之后配置`国内镜像加速器`，点击以下链接查看配置教程：
 - [配置镜像加速器][5]

### 本地端口检测  
本容器会占用以下端口，请在运行之前检查端口是否已经被使用，否则会提示端口占用并无法启用。

|名称        | 端口   |
| --------   | -----:  |
| 默认http     | 80 |
| 默认https端口     | 443 |
| 默认phpmyadmin端口     | 8080 |
| 默认mysql端口     | 3306 |
| memcached端口     | 11211 |
>其中默认端口可以通过修改`.env`文件来调整，请复制根目录下env-example为`.env`进行修改。  
[**env-example**][6]为环境变量文件，可通过修改对应变量来调整程序配置，详情见[wiki][7]。

### 快速启动
环境安装配置和本地端口检测都准备完毕后，就可以输入以下命令运行本容器了。
```
$ sudo yum install git  #安装git，如已安装可跳过
$ git clone -b zhangchunchen https://gitee.com/ecjia/ecjia-docker.git   #拉取ecjia docker程序
$ cd ecjia docker    #进入程序目录
$ docker-compose up --build -d    #编译并启动
```
等待几分钟，当出现如图所示，即代表启动成功  
![输入图片说明](https://gitee.com/uploads/images/2017/1226/171326_dda3adcf_1661389.png "屏幕截图.png")   
现在访问`http://$服务器ip`，就可以看到ecjia程序开始运行了
![输入图片说明](https://gitee.com/uploads/images/2017/1226/171928_48bbd71c_1661389.png "屏幕截图.png")

### 绑定域名
你可以通过修改./services/nginx/conf.d/default.conf文件来绑定域名。
```
$vim ./services/nginx/conf.d/default.conf    #编辑虚拟主机配置文件
```
设置客户端访问的域名，默认为localhost，如果站点上只有一个站点的话可以不修改这块设置;  
但是不建议，在做完域名解析后，应该把域名替换掉localhost（如：``` server_name www.xxx.com ```）
```
……
`server_name  localhost；`    #默认为localhost
location / {
    root   /ecmoban/www;	#站点的根目录地址
    index  index.php index.html index.htm;    #程序能够访问的默认的后缀名，默认没有index.php，需要加上
……
}
```

### 使用phpmyadmin管理数据库
启动容器后，访问`http://$服务器ip:8080`，即可访问phpmyadmin  
![输入图片说明](https://gitee.com/uploads/images/2017/1226/170641_02593a83_1661389.png "屏幕截图.png")  
**以下为`数据库默认信息`：**

|名称        | 值   |
| --------   | -----:  |
| 默认数据库主机名     | ecjia-db |
| 默认数据库        | ecjia-daojia |
| 默认数据库root密码     | ecjia@password |
| 默认数据库账号     | ecjia |
| 默认数据库密码        |   ecjia123   | 

### 更多高级功能
本程序除了以上功能外，还支持其他功能，可点击以下标题查看如何使用。

 - [配置https][8]
 - [更改php，mysql版本][9]
 - [修改php，mysql，nginx配置文件][10]
 - [查看程序日志和程序数据][11]
 - [自定义各组件端口][12]

### [常见问题][13]
如果你遇到一些问题和困难，你可以访问以下对应标题链接访问解决办法：

 - [软件常见运行问题][14]
 - [nginx常见问题][15]
 - [php-fpm常见问题][16]
 - [mysql常见问题][17]

如果常见问题wiki没有您遇到的问题，您可提[issues](https://gitee.com/ecjia/ecjia-docker/issues)


  [1]: https://gitee.com/ecjia/ecjia-docker/wikis/Windows%E5%AE%89%E8%A3%85Docker?parent=%E7%8E%AF%E5%A2%83%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AE
  [2]: https://gitee.com/ecjia/ecjia-docker/wikis/Linux%E5%AE%89%E8%A3%85docker?parent=%E7%8E%AF%E5%A2%83%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AE
  [3]: https://gitee.com/ecjia/ecjia-docker/wikis/MacOS%E5%AE%89%E8%A3%85Docker?parent=%E7%8E%AF%E5%A2%83%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AE
  [4]: https://gitee.com/ecjia/ecjia-docker/wikis/Docker-Compose?parent=%E7%8E%AF%E5%A2%83%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AE
  [5]: https://gitee.com/ecjia/ecjia-docker/wikis/%E9%85%8D%E7%BD%AE%E9%95%9C%E5%83%8F%E5%8A%A0%E9%80%9F%E5%99%A8?parent=%E7%8E%AF%E5%A2%83%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AE
  [6]: https://gitee.com/ecjia/ecjia-docker/wikis/env-example
  [7]: https://gitee.com/ecjia/ecjia-docker/wikis/env-example
  [8]: https://gitee.com/ecjia/ecjia-docker/wikis/HTTPS%E9%85%8D%E7%BD%AE?parent=%E7%94%A8%E6%B3%95
  [9]: https://gitee.com/ecjia/ecjia-docker/wikis/%E6%9B%B4%E6%94%B9php%EF%BC%8Cmysql%E7%89%88%E6%9C%AC?parent=%E7%94%A8%E6%B3%95
  [10]: https://gitee.com/ecjia/ecjia-docker/wikis/%E4%BF%AE%E6%94%B9php%EF%BC%8Cmysql%EF%BC%8Cnginx%E9%85%8D%E7%BD%AE?parent=%E7%94%A8%E6%B3%95
  [11]: https://gitee.com/ecjia/ecjia-docker/wikis/%E6%9F%A5%E7%9C%8B%E6%97%A5%E5%BF%97%E5%92%8C%E6%95%B0%E6%8D%AE?parent=%E7%94%A8%E6%B3%95
  [12]: https://gitee.com/ecjia/ecjia-docker/wikis/%E8%87%AA%E5%AE%9A%E4%B9%89%E7%AB%AF%E5%8F%A3?parent=%E7%94%A8%E6%B3%95
  [13]: https://gitee.com/ecjia/ecjia-docker/wikis/FAQ
  [14]: https://gitee.com/ecjia/ecjia-docker/wikis/%E8%BD%AF%E4%BB%B6%E5%B8%B8%E8%A7%81%E8%BF%90%E8%A1%8C%E9%97%AE%E9%A2%98?parent=%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98
  [15]: https://gitee.com/ecjia/ecjia-docker/wikis/nginx%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98?parent=%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98
  [16]: https://gitee.com/ecjia/ecjia-docker/wikis/php-fpm%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98?parent=%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98
  [17]: https://gitee.com/ecjia/ecjia-docker/wikis/mysql%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98?parent=%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98