vim.pack.add({
    {
        src = gh("nvim-tree/nvim-web-devicons"),
        name = "icons",
    },
})

require("nvim-web-devicons").setup({ enabled = vim.g.have_nerd_font })
