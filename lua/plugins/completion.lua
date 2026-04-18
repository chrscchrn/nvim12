vim.pack.add({ gh("L3MON4D3/LuaSnip") })
vim.pack.add({ gh("saghen/blink.cmp") })

require("blink.cmp").setup({
    keymap = { preset = "default" },
    appearance = { nerd_font_variant = "mono" },
    completion = {
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
    },
    sources = {
        default = { "lsp", "path", "snippets" },
    },
    snippets = { preset = "luasnip" },
    fuzzy = { implementation = "prefer_rust" },
    signature = { enabled = true },
})
