vim.pack.add({ gh("stevearc/oil.nvim") })
require("oil").setup()
-- oil.nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
