vim.lsp.config("biome", {
  cmd = { "biome", "lsp-proxy" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "jsonc",
  },
  root_markers = {
    "biome.json",
    "biome.jsonc",
    "package.json",
    ".git",
  },
})

return {}
