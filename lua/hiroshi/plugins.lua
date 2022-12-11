local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("folke/tokyonight.nvim")
	use("rebelot/kanagawa.nvim")
	use("akinsho/toggleterm.nvim")
	use("kylechui/nvim-surround")
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("kyazdani42/nvim-tree.lua") -- file exploer
	use("numToStr/Comment.nvim") -- comment stuff
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/cmp-path") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("hrsh7th/cmp-nvim-lsp-signature-help") -- Completion
	use("hrsh7th/cmp-nvim-lsp-document-symbol") -- Completion
	use("hrsh7th/cmp-cmdline") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("RRethy/vim-illuminate") -- Highlight under cursor
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("L3MON4D3/LuaSnip")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("windwp/nvim-autopairs")
	-- use 'windwp/nvim-ts-autotag'
	use("norcalli/nvim-colorizer.lua")
	use("folke/zen-mode.nvim")
	use("phaazon/hop.nvim")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("akinsho/nvim-bufferline.lua")
	-- use 'github/copilot.vim'
	use("lewis6991/gitsigns.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("folke/todo-comments.nvim")
	use("folke/trouble.nvim")
	use("MunifTanjim/nui.nvim")
	use("rcarriga/nvim-notify")
	-- use("folke/noice.nvim")
end)
