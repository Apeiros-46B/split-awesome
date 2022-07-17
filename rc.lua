-- awesome_mode: api-level=4:screen=on

-- Autoload luarocks modules
pcall(require, "luarocks.loader")

-- Error handling
require("core.error_handling")

-- Variable definitions
require("core.variables")

-- Misc
require("core.misc")

-- Screen setup
require("core.screen_setup")

-- Key & mouse bindings
require("core.binds.init")

-- Rules
require("core.rules")

-- Notifications
require("core.notification")
