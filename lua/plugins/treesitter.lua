vim.pack.add({ gh("nvim-treesitter/nvim-treesitter") }, { build = ":TSUpdate" })

vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        local buf, filetype = args.buf, args.match
        local language = vim.treesitter.language.get_lang(filetype)
        if not language then
            return
        end

        -- Try to load and attach the parser
        if vim.treesitter.language.add(language) then
            vim.treesitter.start(buf, language)

            -- Set up indentation if available
            local has_indent_query = vim.treesitter.query.get(language, "indent") ~= nil
            if has_indent_query then
                vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
        end
    end,
})

