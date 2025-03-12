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

vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { desc = 'Copy unnamed buffer to clipboard', noremap = true, silent = true })

vim.keymap.set('n', '<leader>gg', ':Git<CR>', { noremap = true, silent = true })

return {
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'nvim-neotest/nvim-nio',
  'OXY2DEV/markview.nvim',
  {
    'altermo/ultimate-autopair.nvim',
    event = { 'InsertEnter', 'CmdlineEnter' },
    branch = 'v0.6', --recommended as each new version will have breaking changes
    opts = {
      --Config goes here
    },
  },
}
