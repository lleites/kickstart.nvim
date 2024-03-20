-- Save MacOS style

vim.keymap.set('n', '<D-s>', ':w<CR>', { desc = 'Save ala MacOS' })
vim.keymap.set('i', '<D-s>', '<Esc>:w<CR>i', { desc = 'Save ala MacOS' })
vim.keymap.set('n', '<Leader>w>', ':w<CR>', { desc = 'Save with Leader' })

vim.keymap.set('n', ']b', ':bnext<CR>', { desc = 'Go to next [B]uffer' })
vim.keymap.set('n', '[b', ':bprev<CR>', { desc = 'Go to previous [B]uffer' })
