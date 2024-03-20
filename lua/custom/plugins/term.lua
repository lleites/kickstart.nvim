return {
  'numToStr/FTerm.nvim',
  config = function()
    vim.keymap.set('n', '<leader>t', function()
      require('FTerm'):toggle()
    end, { desc = 'Toogle [T]erminal' })
  end,
}
