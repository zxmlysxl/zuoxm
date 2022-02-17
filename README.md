[![若部分图片无法正常显示，请挂上机场浏览或点这里到末尾看修复教程](https://visitor-badge.glitch.me/badge?page_id=sirpdboy-visitor-badge)](#解决-github-网页上图片显示失败的问题) [![](https://img.shields.io/badge/TG群-点击加入-FFFFFF.svg)](https://t.me/joinchat/AAAAAEpRF88NfOK5vBXGBQ)
<a href="#readme">
    <img src="https://img.vim-cn.com/69/df015dc73fc71da07c3264766e8032ac042fed.png" alt="图飞了😂" title="opentopd" align="right" height="180" />
</a>

欢迎来到zxmlysxl的源码仓库！
=
[zxmlysxl 常用插件](https://github.com/zxmlysxl/zuoxm)
==========================================

[![](https://img.shields.io/badge/-目录:-696969.svg)](#readme) [![](https://img.shields.io/badge/-编译说明-F5F5F5.svg)](#编译说明-) [![](https://img.shields.io/badge/-插件说明-F5F5F5.svg)](#插件说明-) [![](https://img.shields.io/badge/-说明-F5F5F5.svg)](#说明-) [![](https://img.shields.io/badge/-捐助-F5F5F5.svg)](#捐助-) 

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

感谢LEAN大，感谢LEO大 等大神分享源码，你可以随意使用其中的源码，但请注明出处。
============================
