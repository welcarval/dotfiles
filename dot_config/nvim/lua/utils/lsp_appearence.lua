vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_clients({ id = args.data.client_id })[1]
    if client and client.name == "jdtls" then
      vim.lsp.semantic_tokens.enable(false)
    end
  end,
})
