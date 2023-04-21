欢迎来到zxmlysxl的源码仓库！
=
[zxmlysxl 常用插件](https://github.com/zxmlysxl/zuoxm)
==========================================

[![](https://img.shields.io/badge/-目录:-696969.svg)](#readme) [![](https://img.shields.io/badge/-编译说明-F5F5F5.svg)](#编译说明-) [![](https://img.shields.io/badge/-插件说明-F5F5F5.svg)](#插件说明-) [![](https://img.shields.io/badge/-说明-F5F5F5.svg)](#说明-)
请 **认真阅读完毕** 本页面，本页面包含注意事项和如何使用。

## 写在前面：
软件不定期同步大神库更新，适合一键下载到package目录下，用于openwrt编译。
-

## 编译说明 [![](https://img.shields.io/badge/-编译说明-F5F5F5.svg)](#编译说明-) 

## 食用方法一、

```Brach
    # 在feeds.conf.default加入
    src-git zuoxm  https://github.com/zxmlysxl/zuoxm
 ``` 

## 食用方法二：
 ```Brach
    # git获取源码
    git clone https://github.com/zxmlysxl/zuoxm package/zuoxm
    make menuconfig
 ``` 
 
## openwrt 插件功能说明 [![](https://img.shields.io/badge/-插件说明-F5F5F5.svg)](#插件说明-)

luci-app-autopoweroff-----------------定时自动重启和自动关机

luci-app-advanced---------------------系统高级设置【自带文件管理功能】

luci-app-NetSpeedTest-----------------网络速度测试

luci-app-poweroffdevice---------------关机功能插件

luci-app-netdata----------------------网络监控中文版

luci-app-timecontrol------------------定时控制

luci-app-control-weburl---------------管控过滤[集成上网时间控制，黑白名单IP过滤，网址过滤几大功能]

luci-app-cpulimit---------------------CPU限制

luci-app-turboacc---------------------新版TURBO ACC加速器

luci-app-eqos-------------------------EQS网速控制

luci-app-koolddns---------------------KOOL域名DNS解析工具

luci-app-koolproxyR-------------------KP经典去广告

luci-theme-btmod----------------------btmod（适配18.06）

luci-theme-opentopd-------------------opentopd（适配18.06）

luci-theme-opentoks-------------------仿LEDE主题（适配18.06）


## 说明 [![](https://img.shields.io/badge/-说明-F5F5F5.svg)](#说明-)

源码来源：https://github.com/zxmlysxl/zuoxm

感谢LEAN大，感谢LEO大、sirpdboy等大神分享源码，你可以随意使用其中的源码，但请注明出处。
============================
