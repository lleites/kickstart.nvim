return {
  'sindrets/diffview.nvim',
  config = function()
    require('which-key').register {
      ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
    }

    vim.keymap.set('n', '<leader>gs', ':DiffviewOpen<cr>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gc', ':DiffviewClose<cr>', { desc = '[G]it [C]lose' })
    vim.keymap.set('n', '<leader>gh', ':DiffviewFileHistory<cr>', { desc = '[G]it [H]istory' })
  end,
}
