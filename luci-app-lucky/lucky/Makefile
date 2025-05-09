# SPDX-License-Identifier: GPL-3.0-only
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lucky
PKG_VERSION:=2.13.4
PKG_RELEASE:=1
PKGARCH:=all 

ifeq ($(ARCH),mipsel)
	LUCKY_ARCH:=mipsle_softfloat
endif
ifeq ($(ARCH),mips)
	LUCKY_ARCH:=mips_softfloat
endif
ifeq ($(ARCH),i386)
	LUCKY_ARCH:=i386
endif
ifeq ($(ARCH),x86_64)
	LUCKY_ARCH:=x86_64
endif
ifeq ($(ARCH),arm)
	LUCKY_ARCH:=armv7
endif
ifeq ($(BOARD),bcm53xx)
	LUCKY_ARCH:=armv6
ifeq ($(word 2,$(subst +,$(space),$(call qstrip,$(CONFIG_CPU_TYPE)))),)
	LUCKY_ARCH:=armv5
endif
endif
ifeq ($(BOARD),kirkwood)
	LUCKY_ARCH:=armv5
endif
ifeq ($(ARCH),aarch64)
	LUCKY_ARCH:=arm64
endif

PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=GDY666 <gdy666@foxmail.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_HASH:=skip

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Lucky gdy
	DEPENDS:=@(i386||x86_64||arm||aarch64||mipsel||mips)
	URL:=https://github.com/gdy666/lucky
endef

define Package/$(PKG_NAME)/description
  Main functions of Lucky: ipv4/ipv6 portforward,ddns,IOT wake on lan ,reverse proxy and more...
endef


define Package/$(PKG_NAME)/preinst
#!/bin/sh
[ ! -f /etc/config/lucky.daji/lucky.conf ] && exit 0
cp /etc/config/lucky.daji/lucky.conf /tmp/lucky.conf
endef


define Package/$(PKG_NAME)/postinst
#!/bin/sh
[ ! -f /tmp/lucky.conf ] && exit 0
mv /tmp/lucky.conf /etc/config/lucky.daji/lucky.conf
endef

define Package/{package-name}/postrm
#!/bin/sh
rm -rf /etc/config/lucky.daji
endef 

define Build/Prepare
	[ ! -f $(PKG_BUILD_DIR)/$(PKG_NAME)_$(PKG_VERSION)_Linux_$(LUCKY_ARCH).tar.gz ] && wget https://github.com/gdy666/lucky/releases/download/v$(PKG_VERSION)/$(PKG_NAME)_$(PKG_VERSION)_Linux_$(LUCKY_ARCH).tar.gz -O $(PKG_BUILD_DIR)/$(PKG_NAME)_$(PKG_VERSION)_Linux_$(LUCKY_ARCH).tar.gz
	tar -xzvf $(PKG_BUILD_DIR)/$(PKG_NAME)_$(PKG_VERSION)_Linux_$(LUCKY_ARCH).tar.gz -C $(PKG_BUILD_DIR)
endef

define Build/Configure

endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin $(1)/etc/init.d $(1)/etc/config/lucky.daji
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/lucky $(1)/usr/bin/lucky
	$(INSTALL_BIN) ./files/lucky.init $(1)/etc/init.d/lucky
	$(INSTALL_DATA) ./files/default.conf $(1)/etc/config/lucky.daji/lucky.conf
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
