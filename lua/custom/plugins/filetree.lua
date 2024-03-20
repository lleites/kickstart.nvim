return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {}
    require('which-key').register {
      ['<leader>n'] = { name = '[N]eoTree', _ = 'which_key_ignore' },
    }
    vim.keymap.set('n', '<leader>nt', '<Cmd>Neotree toggle<CR>', { desc = '[N]eo[T]ree' })
  end,
}
