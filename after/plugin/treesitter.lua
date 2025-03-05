-- Highlight @foo.bar as "Identifier" only in Lua files
vim.api.nvim_set_hl(0, "@foo.bar.lua", { link = "Identifier" })
