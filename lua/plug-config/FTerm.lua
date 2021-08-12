
return function()
    require("FTerm").setup()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    keymap('n', '<F2>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
    keymap('t', '<F2>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
end