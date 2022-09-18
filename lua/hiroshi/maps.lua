local keymap = vim.keymap

-- bufferline
keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
keymap.set('n', '<leader>d', '<Cmd>bdelete<CR>', {})

-- telescope
keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', {})
keymap.set('n', '<leader>fk', '<Cmd>Telescope keymaps<CR>', {})

-- nvim-tree
keymap.set('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', {})

-- terminal
keymap.set('t', '<ESC>', '<C-\\><C-n>', {})
