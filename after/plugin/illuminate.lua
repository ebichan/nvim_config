local status, illuminate = pcall(require, "vim-illuminate")
if not status then
	return
end

illuminate.configure({})
