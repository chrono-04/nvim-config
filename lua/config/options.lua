vim.opt.number = true -- show relative line numbers
vim.opt.cursorline = true -- show line under cursor
vim.opt.expandtab = true -- convert tabs into spaces
vim.opt.shiftwidth = 4 -- amount of space to indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.signcolumn = "yes"

-- case-sensitive searching UNLESS \c or one or
-- more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- sets how neovim will display certain whitespaces characters in the editor
-- see help `list`
-- and help `listchars`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } 

-- Minimal number of screen lines to keep above
-- and below the cursor
vim.opt.scrolloff = 5

vim.opt.wrap = true -- enable wrapping
vim.opt.linebreak = true -- break at word boundaries
-- vim.opt.showbreak = "↳ " -- string shown at start of wrapped line (optional)
vim.opt.breakindent = true -- preserve indentation on wrapped lines
