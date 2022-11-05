local keymap = vim.keymap

-- better escape
keymap.set("i", "jj", "<ESC>")

-- bufferline
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
keymap.set("n", "<leader>d", "<Cmd>bdelete<CR>", {})

-- -- telescope
-- keymap.set("n", ";f", "<Cmd>Telescope find_files<CR>", {})
-- keymap.set("n", ";k", "<Cmd>Telescope keymaps<CR>", {})
-- keymap.set("n", ";h", "<Cmd>Telescope help_tags<CR>", {})
-- keymap.set("n", ";c", "<Cmd>Telescope colorscheme<CR>", {})
-- keymap.set("n", "\\\\", "<Cmd>Telescope buffers<CR>", {})
-- keymap.set("n", ";;", "<Cmd>Telescope resume<CR>", {})
-- keymap.set("n", ";e", "<Cmd>Telescope diagnostics<CR>", {})

-- nvim-tree
keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", {})

-- terminal
keymap.set("t", "<ESC>", "<C-\\><C-n>", {})

-- hop.nvim
-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap(
	"",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
	{}
)
vim.api.nvim_set_keymap(
	"",
	"F",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
	{}
)
vim.api.nvim_set_keymap(
	"",
	"t",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>",
	{}
)
vim.api.nvim_set_keymap(
	"",
	"T",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>",
	{}
)

-- trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })
