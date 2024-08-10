vim.keymap.set('n', '<C-\\>', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  --   dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
}

