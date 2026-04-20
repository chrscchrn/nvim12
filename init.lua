vim.loader.enable()

_G.gh = function(x)
    return "https://github.com/" .. x
end

local function get_hostname_val(field)
    local handle = io.popen("hostnamectl | grep '" .. field .. "' | cut -d: -f2")
    local result = handle:read("*a")
    handle:close()
    return result:gsub("^%s*(.-)%s*$", "%1")
end

local handle = get_hostname_val("Vendor")

if handle == "Dell Inc." or handle == "DellInc." then
    vim.g.clipboard = {
        name = "OSC 52",
        copy = {
            ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
            ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
        },
        paste = {
            ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
            ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
        },
    }
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
