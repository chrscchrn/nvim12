vim.pack.add({ gh("b0o/schemastore.nvim") })

vim.lsp.config("yamlls", {
    settings = {
        yaml = {
            schemaStore = { enable = false, url = "" },
            schemas = require("schemastore").yaml.schemas(),
        },
    },
})
