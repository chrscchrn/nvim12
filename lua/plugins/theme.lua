vim.pack.add({
    "https://github.com/neanias/everforest-nvim",
})

require("everforest").setup({
    background = "soft",
    transparent_background_level = 2,
})

vim.cmd([[colorscheme everforest]])
