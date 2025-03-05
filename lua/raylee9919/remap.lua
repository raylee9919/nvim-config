vim.g.mapleader=" "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

local enabled = true
-- This function disables diagnostics for the current buffer
function DisableDiagnostics()
    local bufnr = vim.api.nvim_get_current_buf()
    if enabled then
        vim.diagnostic.disable(bufnr, nil)
        enabled = false
    else
        vim.diagnostic.enable(bufnr)
        enabled = true
    end
end

-- Bind this function to a key mapping or command as per your preference
vim.api.nvim_set_keymap('n', '<Leader>d', ':lua DisableDiagnostics()<CR>', { noremap = true, silent = true })
