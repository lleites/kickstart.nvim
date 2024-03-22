return {
  'numToStr/FTerm.nvim',
  config = function()
    vim.keymap.set({ 'n', 'i', 't' }, '<F12>', function()
      require('FTerm'):toggle()
    end, { desc = 'Toogle [T]erminal' })
  end,
}
