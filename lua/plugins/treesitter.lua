return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = { 
		enable = true,
	    },
	    indent = { enable = true },
	    autotage = { enable = true },
	    ensure_installed = {
		"lua",
		"javascript",
		"python",
		"html",
	    },
	    auto_install = true,

	    -- better text selection
	    incremental_selection = {
		enable = true,
		keymaps = {
		    init_selection = "<Enter>", -- set to `false` to disable one of the mappings
		    node_incremental = "<Enter>",
		    scope_incremental = false,
		    node_decremental = "<Backspace>",
		},
	    },
	})
    end
}
