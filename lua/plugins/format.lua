vim.pack.add({ gh("stevearc/conform.nvim") })

local conform = require("conform")
conform.setup({
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_organize_imports", "ruff_format" },
        sh = { "shfmt" },
        bash = { "shfmt" },
    },
    notify_on_error = true,
    format_on_save = false,
})

vim.keymap.set({ "n", "v" }, "<leader>f", function()
    conform.format({
        async = true,
        lsp_format = "fallback",
    })
end, { desc = "format buffer" })
