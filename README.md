## 简介

首先介绍一下nish工具，该工具是专门为mac环境下设计和实现的ssh servers管理工具，我是一个运维人员，mac下的ssh servers管理工具都不甚好用，比如zoc,vssh等工具，甚至有些工具是要收取高昂的费用，像我这种穷三代肯定不原意使用正版授权，但是使用盗版破解软件又觉得不尊重作者。综上所述，我决定自己写一个，90%以上代码是用python，少量用了shell脚本。

## 安装

nish工具安装极其简单，需要先安装brew包管理器

* 安装brew教程见 http://brew.sh
* $ git clone https://github.com/mynicolas/nish.git -b v0.11
* $ cd nish/
* $ bash setup.sh

**如果不破坏系统python环境可以安装其他python环境，我用的[anaconda](https://www.continuum.io/downloads)**

## 使用

* $ nish help // 查看帮助
```
nish SUBCOMMAND ARGUMENTS
SUBCOMMAND:
    list        list all instances
        ARGUMENTS:
        EXAMPLE:	 'nish list'

    add	        add one instance
        ARGUMENTS:	 NAME INFOMATION PORT	
        EXAMPLE:	 'nish add NAME USER@IP:PORT' or 'nish NAME USER^PATH_TO_PRIVATE_KEY@IP:PORT'

    edit        edit an instance	
        ARGUMENTS:	 NAME INFOMATION PORT
        EXAMPLE:	 'nish edit NAME USER@IP:PORT' or 'nish NAME USER^PATH_TO_PRIVATE_KEY@IP:PORT'

    remove      remove an instance
        ARGUMENTS:	 NAME
        EXAMPLE:	 'nish remove NAME'

    get	        get an instance
        ARGUMENTS:	 NAME
        EXAMPLE:	 'nish get NAME'

    pass        get password or private key of an instance
        ARGUMENTS:	 NAME
        EXAMPLE:	 'nish pass NAME'
```

## 蓝图
* $ nish pass NAME 命令将先验证sudo密码
* 版本自动升级，升级时自动迁移数据
* 列表分页
