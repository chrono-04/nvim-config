return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      css = { "prettierd" },
      html = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
    },
    format_on_save = function(bufnr)
      return {
        lsp_fallback = true,
        timeout_ms = 2000,
      }
    end,
  },
}

