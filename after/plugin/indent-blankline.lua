local status, blankline = pcall(require, "indent-blankline")
if not status then
	return
end

blankline.setup({
	show_current_content = true,
	show_current_content_start = true,
})
