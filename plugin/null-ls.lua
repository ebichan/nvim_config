local status, null_ls = pcall(require, "null-ls")
local sources = require("null-ls.sources")
if not status then
  return
end

local methods = require("null-ls.methods")
local helpers = require("null-ls.helpers")
local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

-- setting for ruff which works not only linter but formatter, and is alternative to isort and black stuff.
local function ruff_fix()
  local config_path = os.getenv("HOME") .. "/.config/ruff/pyproject.toml"
  return helpers.make_builtin({
    name = "ruff",
    meta = {
      url = "https://github.com/charliermarsh/ruff/",
      description = "An extremely fast Python linter, written in Rust.",
    },
    method = methods.internal.FORMATTING,
    filetypes = { "python" },
    generator_opts = {
      command = "ruff",
      args = {
        "--fix",
        "-e",
        "-n",
        "--stdin-filename",
        "$FILENAME",
        "--config",
        config_path,
        "-",
      },
      to_stdin = true,
    },
    factory = helpers.formatter_factory,
  })
end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.rustfmt,
    -- null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.markdownlint,
    null_ls.builtins.code_actions.shellcheck,
    ruff_fix(),
    null_ls.builtins.diagnostics.ruff,
  },
  debug = true,
  -- sources = {
  --   null_ls.builtins.code_actions.gitsings,
  -- },
  -- sources = {
  --   null_ls.builtins.diagnostics.eslint_d.with({
  --     diagnostics_format = '[eslint] #{m}\n(#{c})'
  --   }),
  --   null_ls.builtins.diagnostics.fish
  -- },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds({ buffer = 0, group = augroup_format })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = 0,
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end
  end,
})
