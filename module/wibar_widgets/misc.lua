local awful = require("awful")
local wibox = require("wibox")

return function(s)
    -- Prompt box
    s.promptbox = awful.widget.prompt()

    -- Layout box
    s.layoutbox = awful.widget.layoutbox {
        screen  = s,
        buttons = {
            awful.button({ }, 1, function () awful.layout.inc( 1) end),
            awful.button({ }, 3, function () awful.layout.inc(-1) end),
            awful.button({ }, 4, function () awful.layout.inc(-1) end),
            awful.button({ }, 5, function () awful.layout.inc( 1) end),
        }
    }

    -- Keyboard layout
    s.keyboardlayout = awful.widget.keyboardlayout()

    -- Textclock
    s.textclock = wibox.widget.textclock()

    -- Systray
    s.systray = wibox.widget.systray()
end
