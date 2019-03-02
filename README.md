## 简介

首先介绍一下nish工具，该工具是专门为mac环境下设计和实现的ssh servers管理工具，我是一个运维人员，mac下的ssh servers管理工具都不甚好用，比如zoc,vssh等工具，甚至有些工具是要收取高昂的费用，像我这种穷三代肯定不原意使用正版授权，但是使用盗版破解软件又觉得不尊重作者。综上所述，我决定自己写一个，90%以上代码是用python，少量用了shell脚本。

## 安装

nish工具安装极其简单，需要先安装brew包管理器

* 安装过程会将~/.ssh/config做备份并创建新的config文件，执行uninstall.sh之后会将config文件还原，请放心使用
* 安装brew教程见 http://brew.sh
* 如果没有pip，需要先安装pip
* $ git clone https://github.com/mynicolas/nish.git -b v0.11
* $ cd nish/
* $ bash setup.sh

**如果不破坏系统python环境可以安装其他python环境，我用的[anaconda](https://www.continuum.io/downloads)**

## 使用

* $ nish -h||-m // 查看帮助
```
nish  子命令  参数(name和index可以同等使用)
子命令:
    list    列出所有实例
        参数:
        举例:    'nish list'

    add 添加一个实例
        参数:    INDEX||NAME INFOMATION:PORT
        举例:    'nish add INDEX||NAME USER@IP:PORT' 或者 'nish INDEX||NAME USER^PATH_TO_PRIVATE_KEY@IP:PORT'

    edit    修改一个实例
        参数:    NAME INFOMATION PORT
        举例:    'nish edit INDEX||NAME USER@IP:PORT' 或者 'nish INDEX||NAME USER^PATH_TO_PRIVATE_KEY@IP:PORT'

    rm  删除一个实例
        参数:    NAME
        举例:    'nish rm INDEX||NAME'

    get 获取指定实例信息
        参数:    NAME
        举例:    'nish get INDEX||NAME'

    cp  拷贝指定实例
        参数:    NAME
        举例:    'nish cp INDEX||NAME NEW_NAME'

    pass    获取一个实例的密码或者私钥密码
        参数:    NAME
        举例:    'nish pass INDEX||NAME'

    -m  打印该文档
    -h  print English help doc.
```

## 卸载
* $ cd nish/
* $ bash uninstall.sh

## 蓝图
* $ nish pass NAME 命令将先验证sudo密码
* 版本自动升级，升级时自动迁移数据
* 列表分页
* 分组
* 搜索
