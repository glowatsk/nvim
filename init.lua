
-- .
-- ├── init.lua
-- ├── ...
-- └── lua
--     ├── plugins
--     │   ├── init.lua
--     │   └── telescope.lua
--     └── user
--         ├── init.lua
--         ├── lazy_bootstrap.lua
--         ├── maps.lua
--         └── options.lua

----------------------------------------------[[ Bootstrap Lazy ]]

require("user/lazy_bootstrap")   -- bootstraps folke/lazy

----------------------------------------------[[  User Settings ]]

require("user")                  -- loads lua/user/init.lua
require("user/options")          -- loads lua/user/options.lua
require("user/maps")             -- etc.

----------------------------------------------[[  Load Plugins  ]]

require("lazy").setup("plugins") -- loads each lua/plugin/*
vim.cmd.colorscheme "catppuccin"
