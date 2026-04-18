vim.pack.add({
    gh("neovim/nvim-lspconfig"),
    gh("mason-org/mason.nvim"),
    gh("mason-org/mason-lspconfig.nvim"),
    gh("WhoIsSethDaniel/mason-tool-installer.nvim"),
})

require("mason").setup()
require("mason-lspconfig").setup({
    automatic_enable = {
        exclude = { "stylua" },
    },
})
require("mason-tool-installer").setup({
    ensure_installed = {
        "lua_ls",
        "ruff",
        "basedpyright",
        "yamlls",
        "ansiblels",
        "bashls",
        "stylua",
        "shfmt",
        "markdownlint",
        "shellcheck",
    },
})

