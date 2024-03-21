return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            '.git',
          },
        },
      },
    }
    vim.keymap.set('n', '<C-N>', '<Cmd>Neotree toggle<CR>', { desc = '[N]eo[T]ree' })
  end,
}

-- return {
--   'nvim-tree/nvim-tree.lua',
--   version = '*',
--   config = function()
--     require('nvim-tree').setup {
--       sort = {
--         sorter = 'case_sensitive',
--       },
--       view = {
--         adaptive_size = false,
--         side = 'left',
--         width = { min = 30, max = 30 },
--         preserve_window_proportions = true,
--       },
--       renderer = {
--         group_empty = true,
--       },
--       filters = {
--         dotfiles = false,
--         custom = { '^.git$' },
--       },
--       filesystem_watchers = {
--         enable = true,
--       },
--     }
--     vim.keymap.set('n', '<C-N>', '<Cmd>NvimTreeToggle<CR>', { desc = 'Toogle Filetree' })
--   end,
-- }
