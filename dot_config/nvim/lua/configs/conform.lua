local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    svelte = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    haskell = { "stylish-haskell", "fourmolu" }
  },
  formatters = {
      prettier = {
          command = "npx",
          args = { "prettier", "--write", "$FILENAME"},
          stdin = false,
      }
  }

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
