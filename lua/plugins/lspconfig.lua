return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Map filetypes to their LSP servers
    local ft_to_lsp = {
      html = { "html", "emmet_ls" },
      css = { "cssls", "emmet_ls" },
      javascript = { "ts_ls" },
      typescript = { "ts_ls" },
      javascriptreact = { "ts_ls" },
      typescriptreact = { "ts_ls" },
      python = { "pyright" },
    }

    -- Auto-start LSP servers based on filetype
    vim.api.nvim_create_autocmd("FileType", {
      pattern = vim.tbl_keys(ft_to_lsp),
      callback = function()
        local servers = ft_to_lsp[vim.bo.filetype]
        for _, server in ipairs(servers) do
          vim.lsp.enable(server)
        end
      end,
    })
  end,
}

