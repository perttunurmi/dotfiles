local widgets = {
    wirelessStatus = require("widgets/wirelessStatus"),
}
-- Wireless status widget (`status` is presumably device dependent)
theme.wirelessStatus = widgets.wirelessStatus({
    notification_preset = { font = "Mononoki Nerd Font 10", fg = theme.fg_normal },
    timeout = 10,
    settings = function(self)
        if self.status == "1" or self.status == "" then
            self.widget:set_image(theme.wifidisc)
        else
            if self.perc <= 5 then
                self.widget:set_image(theme.wifinone)
            elseif self.perc <= 25 then
                self.widget:set_image(theme.wifilow)
            elseif self.perc <= 50 then
                self.widget:set_image(theme.wifimed)
            elseif self.perc <= 75 then
                self.widget:set_image(theme.wifihigh)
            else
                self.widget:set_image(theme.wififull)
            end
        end
    end,
})
local widget_wirelessStatus = wibox.widget { nil, theme.wirelessStatus.widget, layout = wibox.layout.align.horizontal }
