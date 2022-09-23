local status, tokyo_night = pcall(require, "tokyonight")
if not status then
	return
end

tokyo_night.setup({
	style = "night",
	transparent = false,
	terminal_colors = true,
})

vim.api.nvim_command([[colorscheme tokyonight]])
