return {
  "voldikss/vim-floaterm",
  keys = {
    { "<leader>tt", ":FloatermToggle<CR>", desc = "Toggle floating terminal", mode = { "n", "t" } },
    { "<leader>tn", ":FloatermNew<CR>", desc = "New terminal", mode = "n" },
    { "<leader>tk", ":FloatermKill<CR>", desc = "Kill current terminal", mode = "n" },
    { "<leader>tp", ":FloatermPrev<CR>", desc = "Previous terminal", mode = "n" },
    { "<leader>t]", ":FloatermNext<CR>", desc = "Next terminal", mode = "n" },
  },
  config = function()
    -- Floaterm settings
    vim.g.floaterm_width = 0.9
    vim.g.floaterm_height = 0.9
    vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
    vim.g.floaterm_title = "Terminal: $1/$2"
    
    -- Set cyan border color
    vim.api.nvim_set_hl(0, "FloatermBorder", { fg = "#00ffff" })
    
    -- Terminal mode keybinds
    vim.keymap.set("t", "<leader>tt", "<C-\\><C-n>:FloatermToggle<CR>", { desc = "Toggle terminal" })
    vim.keymap.set("t", "<leader>tn", "<C-\\><C-n>:FloatermNew<CR>", { desc = "New terminal" })
    vim.keymap.set("t", "<leader>tk", "<C-\\><C-n>:FloatermKill<CR>", { desc = "Kill terminal" })
    vim.keymap.set("t", "<leader>tp", "<C-\\><C-n>:FloatermPrev<CR>", { desc = "Previous terminal" })
    vim.keymap.set("t", "<leader>t]", "<C-\\><C-n>:FloatermNext<CR>", { desc = "Next terminal" })
  end,
}
