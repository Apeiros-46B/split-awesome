local awful = require("awful")
local beautiful = require("beautiful")

-- {{{ Focus
-- Autofocus
require("awful.autofocus")

-- Focus follows mouse
client.connect_signal("mouse::enter", function(c)
    c:activate { context = "mouse_enter", raise = false }
end)
-- }}}

-- {{{ Menu & menubar
local hotkeys_popup = awful.hotkeys_popup
local menubar = require("menubar")

local awesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

mainmenu = awful.menu({
    items = {
        {
            "awesome",
            awesomemenu,
            beautiful.awesome_icon
        },
        {
            "open terminal",
            terminal
        }
    }
})

launcher = awful.widget.launcher({
    image = beautiful.awesome_icon,
    menu = mainmenu
})

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}

-- {{{ Titlebar
client.connect_signal("request::titlebars", function(c)
    awful.titlebar(c).widget = require("module.widgets.titlebar")(c)
end)
-- }}}

-- {{{ Other
require("awful.hotkeys_popup.keys")
-- }}}
