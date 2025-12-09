vim.g.mapleader = " "
-- oil keybind
vim.keymap.set("n", "<leader>cd", "<cmd>Oil --float<CR>", {desc = "open parent directory in Oil"})

-- live server keybind config
local function start_and_open(browser_cmd, port)
  vim.api.nvim_command("LiveServerStart")
  local url = string.format("http://localhost:%d", port)
  vim.defer_fn(function()
    vim.fn.jobstart({browser_cmd, url}, {detach = true})
  end, 350)
end

vim.keymap.set("n", "<leader>of", function() start_and_open("firefox", 5555) end, {desc = "Open localhost:5555 in Firefox"})
vim.keymap.set("n", "<leader>oc", function() start_and_open("google-chrome", 5555) end, {desc = "Open localhost:5555 in Chrome"})
vim.keymap.set("n", "<leader>oz", function() start_and_open("zen-browser", 5555) end, {desc = "Open localhost:5555 in Zen"})
vim.keymap.set("n", "<leader>cs", "<cmd>LiveServerStop<CR>", {desc = "Stop Live Server"})

