local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "rust",
    "python",
    "c",
    "toml",
    "json",
    "yaml",
    "lua"
  },
  autotag = {
    enable = true,
  },
}
