return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-python',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-python',
      },
    }
    require('which-key').register {
      ['<leader>t'] = { name = '[T]est', _ = 'which_key_ignore' },
    }
    vim.keymap.set('n', '<leader>tr', ':Neotest run<cr>', { desc = 'Neo[T]est [R]un' })
    vim.keymap.set('n', '<leader>ts', ':Neotest summary<cr>', { desc = 'Neo[T]est [S]ummary' })
    vim.keymap.set('n', '<leader>to', ':Neotest output-panel<cr>', { desc = 'Neo[T]est [O]utput Panel' })
  end,
}
