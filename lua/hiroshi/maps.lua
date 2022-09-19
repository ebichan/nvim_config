local keymap = vim.keymap

-- bufferline
keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
keymap.set('n', '<leader>d', '<Cmd>bdelete<CR>', {})

-- telescope
-- keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', {})
-- keymap.set('n', '<leader>fk', '<Cmd>Telescope keymaps<CR>', {})
-- keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', {})

-- nvim-tree
keymap.set('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', {})

-- terminal
keymap.set('t', '<ESC>', '<C-\\><C-n>', {})

-- hop.nvim
-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
