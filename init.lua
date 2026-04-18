vim.loader.enable()

_G.gh = function(x)
    return "https://github.com/" .. x
end

-- Core: must load before first render
require("config")
require("keymaps")
require("autocommands")
require("plugins.noice")
require("plugins.theme")
require("plugins.icons")
require("plugins.lualine")
require("plugins.lsp")
require("plugins.lua")
require("plugins.schemastore")
require("plugins.whichkey")
require("plugins.oil")

-- Deferred: load after first render
vim.schedule(function()
    require("plugins.telescope")
    require("plugins.undotree")
    require("plugins.format")
    require("plugins.gitsigns")
    require("plugins.autopairs")
    require("plugins.lazygit")
    require("plugins.todo")
    require("plugins.trouble")
    require("plugins.lint")
    require("plugins.completion")
    require("plugins.treesitter")
end)
