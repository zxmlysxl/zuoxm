module("luci.controller.miaplus",package.seeall)

function index()
	if not nixio.fs.access("/etc/config/miaplus") then
		return
	end

	entry({"admin", "control", "miaplus"}, cbi("base"), _("上网时间控制Plus"), 30).dependent = true
	entry({"admin", "control", "miaplus", "status"}, call("act_status")).leaf = true

	entry({"admin", "control", "miaplus", "base"}, cbi("base"), _("Base Setting"), 40).leaf = true
	entry({"admin", "control", "miaplus", "advanced"}, cbi("advanced"), _("Advanced Setting"), 50).leaf = true
	entry({"admin", "control", "miaplus", "template"}, cbi("template"), nil).leaf = true
end

function act_status()
	local e = {}
	e.running = luci.sys.call("iptables -L INPUT |grep MIAPLUS >/dev/null") == 0
	luci.http.prepare_content("application/json")
	luci.http.write_json(e)
end
