return {
  {
    'sindrets/diffview.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- optional
    },
    keys = {
      { '<leader>do', ':DiffviewOpen<CR>', desc = 'Open Diffview' },
      { '<leader>dc', ':DiffviewClose<CR>', desc = 'Close Diffview' },
      { '<leader>dh', ':DiffviewFileHistory<CR>', desc = 'Show File History' },
      { '<leader>df', ':DiffviewFileHistory %<CR>', desc = 'Show Current File History' },
    },
    opts = {
      use_icons = true,
    },
  },
}
