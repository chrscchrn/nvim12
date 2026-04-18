vim.pack.add({ gh("folke/which-key.nvim") })

require("which-key").setup({
    delay = 0,
    icons = { mappings = vim.g.have_nerd_font },
    spec = {
        { "<leader>s", group = "[S]earch", mode = { "n", "v" } },
        { "<leader>i", group = "[I]nlay Hints" },
        { "<leader>r", group = "[R]ename" },
        { "<leader>c", group = "[C]ode / Symbols" },
        { "<leader>x", group = "Trouble [X]" },
        { "<leader>l", group = "[L]azyGit" },
        { "gr", group = "LSP", mode = { "n" } },
    },
})
