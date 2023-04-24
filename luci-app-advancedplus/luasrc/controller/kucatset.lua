local a, t, e
a = Map("advancedplus")
a.title = translate("KuCat Theme Config")
a.description = translate("Set and manage theme main color scheme, activate menu and list background color, theme shortcut and other functions.")..translate("</br>For specific usage, see:")..translate("<a href=\'https://github.com/sirpdboy/luci-app-advancedplus.git' target=\'_blank\'>GitHub @sirpdboy/luci-app-advancedplus </a>")

t = a:section(TypedSection, "basic", translate("Settings"))
t.anonymous = true

e = t:option(ListValue, 'background', translate('Wallpaper Source'))
e:value('0', translate('Local wallpaper'))
e:value('1', translate('Online Bing wallpaper'))
e:value('2', translate('Auto download wallpaper'))
e.default = '0'
e.rmempty = false

e = t:option(ListValue, 'gohome', translate('Status Homekey settings'))
e:value('overview', translate('Overview'))
e:value('online', translate('Online User'))
e:value('realtime', translate('Realtime Graphs'))
e:value('netdata', translate('NetData'))
e.default = 'overview'
e.rmempty = false

e = t:option(ListValue, 'gossr', translate('Shortcut Ssrkey settings'))
e:value('shadowsocksr', translate('SSR'))
e:value('bypass', translate('bypass'))
e:value('vssr', translate('Hell World'))
e:value('passwall', translate('passwall'))
e:value('passwall2', translate('passwall2'))
e:value('openclash', translate('OpenClash'))
e.default = 'bypass'
e.rmempty = false

e = t:option(ListValue, 'gouser', translate('System Userkey settings'))
e:value('netwizard', translate('Inital Setup'))
e:value('system', translate('System'))
e:value('admin', translate('Administration'))
e:value('terminal', translate('TTYD Terminal'))
e:value('packages', translate('Software'))
e.default = 'admin'
e.rmempty = false

e = t:option(Flag, "fontmode", translate("Care mode (large font)"))
e.rmempty = false
e.default = '0'

e = t:option(DummyValue, '', translate('Color palette'),translate("Call up your favorite color value tool (note: HEX and RGB colors)"))
e.rawhtml = true
e.template = 'advancedplus/color_primary'

t = a:section(TypedSection, "theme", translate("Color scheme list"))
t.template = "cbi/tblsection"
t.anonymous = true
t.addremove = true

e = t:option(ListValue, 'mode', translate('Theme mode'))
e:value('light', translate('Light'))
e:value('dark', translate('Dark'))
e.default = 'light'

e = t:option(Value, 'primary', translate('Primary Color(HEX)'))
e:value("blue",translate("RoyalBlue"))
e:value("green",translate("MediumSeaGreen"))
e:value("orange",translate("SandyBrown"))
e:value("red",translate("TomatoRed"))
e.default='green'


e = t:option(Value, 'primary_rgb', translate('Main Background color(RGB)'))
e.default='74,161,133'

e = t:option(Value, 'primary_rgbs', translate('Secondary Background color(RGB)'))
e.default='225,112,88'

e = t:option(Value, 'primary_rgb_ts', translate('Background transparency'))
e:value("0",translate("0"))
e:value("0.1",translate("0.1"))
e:value("0.2",translate("0.2"))
e:value("0.3",translate("0.3"))
e:value("0.4",translate("0.4"))
e:value("0.5",translate("0.5"))
e:value("0.6",translate("0.6"))
e:value("0.7",translate("0.7"))
e:value("0.8",translate("0.8"))
e:value("0.9",translate("0.9"))
e:value("1",translate("1"))
e.default='0.3'

e = t:option(Flag, "use", translate("Use"))
e.rmempty = false
e.default = '1'

e = t:option(Value, 'remarks', translate('Remarks'))

a.apply_on_parse = true
a.on_after_apply = function(self,map)
	luci.sys.exec("/etc/init.d/advancedplus start")
end
return a
