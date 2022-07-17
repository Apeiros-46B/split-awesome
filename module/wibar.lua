local awful = require("awful")
local wibox = require("wibox")

return function(s)
    -- Initialize widgets
    require("module.wibar_widgets.init")(s)

    -- Create the wibox
    s.wibox = awful.wibar {
        position = "top",
        screen   = s,

        widget   = {
            layout = wibox.layout.align.horizontal,

            -- Left widgets
            {
                layout = wibox.layout.fixed.horizontal,

                launcher,

                s.taglist,
                s.promptbox,
            },

            -- Middle widget
            s.tasklist,

            -- Right widgets
            {
                layout = wibox.layout.fixed.horizontal,

                s.keyboardlayout,
                s.systray,
                s.textclock,
                s.layoutbox,
            },
        }
    }
end
