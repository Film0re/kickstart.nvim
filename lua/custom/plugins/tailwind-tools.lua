return {
  'luckasRanarison/tailwind-tools.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {}, -- your configuration
  config = function()
    -- tailwind-tools.lua
    vim.api.nvim_set_keymap('n', '<Leader>ts', ':TailwindSort<CR>', { noremap = true, silent = true })
  end,
}
