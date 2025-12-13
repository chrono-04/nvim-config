return {
  "debsishu/floatodo.nvim",
  config = function()
    require("floatodo").setup({
      path = "~/todo.md",
      width_percent = 0.8,
      height_percent = 0.8,
      insert_on_open = false,
    })
    vim.keymap.set("n", "<leader>td", function()
      require("floatodo").floatodo_toggle()
    end, { desc = "Toggle Floating TODO" })
  end,
}
