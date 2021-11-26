
module("luci.controller.dogcom", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/dogcom") then
        return
    end
    local page
    page = entry({"admin", "services", "dogcom"}, cbi("dogcom"), _("Drcom通用"), 100)
    page.i18n = "dogcom"
    page.dependent = true
end
