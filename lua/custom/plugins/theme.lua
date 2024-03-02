-- Set the number of spaces inserted for each level of indentation
vim.opt.shiftwidth = 4

-- Set the number of spaces that a <Tab> character in the file counts for
vim.opt.softtabstop = 4

-- Set the number of spaces that a <Tab> in the file inserts
vim.opt.tabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true

--vim.opt.expandtab = true

return {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme kanagawa-wave")
    end
}