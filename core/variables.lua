local beautiful = require("beautiful")
local gears = require("gears")

-- Initialize theme
beautiful.init(gears.filesystem.get_configuration_dir() .. "themes/default/theme.lua")

-- Terminal
terminal = "xterm"
terminal_start_cmd = terminal .. " -e "

-- Editor
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal_start_cmd .. editor

-- Modkey
modkey = "Mod4"
