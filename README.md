# 简介
> **ECjia docker**基于docker部署web服务，采用lnmp主流架构，memcached做缓存，phpmyadmin轻松管理数据库。  
高效，快速，只需要一碗泡面的时间，即可启动服务，可快速切换php版本。  
更多介绍请前往：here     

## 运行
#### 环境安装配置
本程序需要安装docker和docker-compose，并建议配置镜像加速器，点击here查看环境安装配置wiki。  
#### 本地端口检测  
本容器会占用以下端口，请在运行之前检查端口是否已经被使用，否则会提示端口占用并无法启用。

|名称        | 端口   |
| --------   | -----:  |
| 默认http\|https端口     | 81\|444 |
| 默认phpmyadmin端口     | 8081 |
| 默认mysql端口(外\|内)     | 3307\|3306 |
| memcached端口     | 11211 |
>其中默认端口可以通过修改`.env`文件来调整，请复制根目录下env-example为**.env**进行修改。  
[**env-example**][5]为环境变量文件，可通过修改对应变量来调整程序配置，详情见[wiki][6]。

#### 快速启动
环境安装配置和本地端口检测都准备完毕后，就可以输入以下命令运行本容器了。
```bash
cd ./ECjia docker    #进入程序目录
docker-compose up --build    #编译并启动
```
等待几分钟，当出现如图所示，即代表启动成功  
![open](https://gitee.com/uploads/images/2017/1221/155229_8a28de8c_1661389.png "屏幕截图.png")  
现在访问`http://$服务器ip:81`，就可以看到ecjia程序开始运行了。

#### 绑定域名
默认绑定localhost，即本机ip。  
你可修改./services/nginx/conf.d/下的nginx虚拟主机配置文件中  
`server_name 需要绑定的域名`即可。

#### 使用phpmyadmin管理数据库
启动容器后，访问`http://$服务器ip:8081`，即可访问phpmyadmin，以下为数据库默认信息：

|名称        | 值   |
| --------   | -----:  |
| 默认数据库主机名     | ecjia-db |
| 默认数据库        | ecjia-daojia |
| 默认数据库root密码     | ecjia@password |
| 默认数据库账号     | ecjia |
| 默认数据库密码        |   ecjia123   | 

#### 更多高级功能
本容器支持https，更换php版本，自定义配置文件等，详情见[**wiki**][1]


## [常见问题][7]
如果你遇到一些问题和困难，你可以访问常见问题wiki。  
常见问题wiki有关于程序本身可能会存在的问题和一些常见的服务问题，如果没有您遇到的问题，请提[issues](https://gitee.com/ecjia/ecjia-docker/issues)


  [1]: http://backup-1251457607.cossh.myqcloud.com/1.png
  [2]: https://gitee.com/ecjia/ecjia-docker/wikis/%E5%AE%89%E8%A3%85docker
  [3]: https://gitee.com/ecjia/ecjia-docker/wikis/%E9%85%8D%E7%BD%AE%E9%95%9C%E5%83%8F%E5%8A%A0%E9%80%9F%E5%99%A8
  [4]: https://gitee.com/ecjia/ecjia-docker/wikis/Docker-Compose
  [5]: https://gitee.com/ecjia/ecjia-docker/wikis/env-example
  [6]: https://gitee.com/ecjia/ecjia-docker/wikis/env-example
  [7]: https://gitee.com/ecjia/ecjia-docker/wikis/FAQ
  [8]: https://gitee.com/ecjia/ecjia-docker/wikis
  [9]: https://gitee.com/ecjia/ecjia-docker/wikis/FAQ