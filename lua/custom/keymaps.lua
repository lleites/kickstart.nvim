-- Saving shortcuts
local n_save = ':w<CR>'
local i_save = '<Esc>:w<CR>i'

vim.keymap.set('n', '<D-s>', n_save, { desc = 'Save ala MacOS' })
vim.keymap.set('i', '<D-s>', i_save, { desc = 'Save ala MacOS' })

vim.keymap.set('n', '<C-s>', n_save, { desc = 'Save with Control' })
vim.keymap.set('i', '<C-s>', i_save, { desc = 'Save with Control' })

-- Navigate buffers
vim.keymap.set('n', ']b', ':bnext<CR>', { desc = 'Go to next [B]uffer' })
vim.keymap.set('n', '[b', ':bprev<CR>', { desc = 'Go to previous [B]uffer' })
