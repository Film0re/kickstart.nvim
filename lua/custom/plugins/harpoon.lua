return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    ---@diagnostic disable-next-line: missing-parameter
    harpoon:setup()
    local function map(lhs, rhs, opts)
      vim.keymap.set('n', lhs, rhs, opts or {})
    end
    map('<leader>ja', function()
      harpoon:list():append()
    end, { desc = 'Append Current File' })
    map('<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle Harpoon Quick Menu' })
    map('<leader>jj', function()
      harpoon:list():select(1)
    end, { desc = 'Select First Item in Harpoon List' })
    map('<leader>jk', function()
      harpoon:list():select(2)
    end, { desc = 'Select Second Item in Harpoon List' })
    map('<leader>jl', function()
      harpoon:list():select(3)
    end, { desc = 'Select Third Item in Harpoon List' })
    map('<leader>hl', function()
      harpoon:list():select(4)
    end, { desc = 'Select Fourth Item in Harpoon List' })
    map('<leader>jp', function()
      harpoon:list():prev()
    end, { desc = 'Move to Previous Item in Harpoon List' })
    map('<leader>jn', function()
      harpoon:list():next()
    end, { desc = 'Move to Next Item in Harpoon List' })
  end,
}
