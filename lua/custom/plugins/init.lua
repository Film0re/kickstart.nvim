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

-- Map a key combination to toggle Zen mode with custom window width
vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>lua require("zen-mode").toggle({})<CR>', { desc = 'Toggle Zenmode', noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"*y', { desc = 'Copy unnamed buffer to clipboard', noremap = true, silent = true })
vim.keymap.set('n', ']e', function()
  vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR }
end, { desc = 'Next error' })

vim.keymap.set('n', '<leader>do', ':DiffviewOpen<CR>', { desc = 'Open Diffview' })
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', { desc = 'Close Diffview' })
vim.keymap.set('n', '<leader>dh', ':DiffviewFileHistory<CR>', { desc = 'Show File History' })
vim.keymap.set('n', '<leader>df', ':DiffviewFileHistory %<CR>', { desc = 'Show Current File History' })

vim.keymap.set('n', '[e', function()
  vim.diagnostic.goto_prev { severity = vim.diagnostic.severity.ERROR }
end, { desc = 'Previous error' })
--vim.opt.expandtab = true

return {
  -- 'christoomey/vim-tmux-navigator',
  {
    'sindrets/diffview.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require('diffview').setup {
        use_icons = true,
      }
    end,
  },
  'folke/noice.nvim',
  'folke/zen-mode.nvim',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'nvim-neotest/nvim-nio',
  'OXY2DEV/markview.nvim',
  -- 'MeanderingProgrammer/render-markdown.nvim',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
}
