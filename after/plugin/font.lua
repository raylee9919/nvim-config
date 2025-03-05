function AdjustFontSize(font_fam, font_size)
    vim.cmd("set guifont=" .. font_fam .. ":h" .. font_size)
end

AdjustFontSize('Iosevka', 16)
--AdjustFontSize('Menlo', 15)
