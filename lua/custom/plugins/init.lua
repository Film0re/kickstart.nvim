-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
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
  'christoomey/vim-tmux-navigator',
  'wakatime/vim-wakatime',
  'folke/zen-mode.nvim',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
}
