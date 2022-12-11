local status, mason = pcall(require, "mason")
if not status then
	return
end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if not status2 then
	return
end

local ensure_installed = {
	-- "sumneko_lua",
	-- "stylua",
	-- "pyright",
	-- "black",
	-- "isort",
	-- "clangd",
	-- "bash-language-server",
	-- "markdownlint",
}

mason.setup({})

lspconfig.setup({
	ensure_installed = ensure_installed,
})
