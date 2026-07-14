-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = {
    "html",
    "cssls",
    "ts_ls",
    "svelte",
    "tailwindcss",
    "emmet_ls",
}

for _, lsp in ipairs(servers) do
    vim.lsp.config(lsp, {
        on_attach = require("nvchad.configs.lspconfig").on_attach,
        capabilities = require("nvchad.configs.lspconfig").capabilities,
    })
    vim.lsp.enable(lsp)
end

vim.lsp.config("pyright", {
    on_attach = require("nvchad.configs.lspconfig").on_attach,
    capabilities = require("nvchad.configs.lspconfig").capabilities,
})
vim.lsp.enable("pyright")

vim.lsp.config("hls", {
    on_attach = require("nvchad.configs.lspconfig").on_attach,
    capabilities = require("nvchad.configs.lspconfig").capabilities,
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    filetypes = { "haskell", "lhaskell", "cabal" },
})
vim.lsp.enable("hls")

vim.diagnostic.config({ virtual_text = false })
