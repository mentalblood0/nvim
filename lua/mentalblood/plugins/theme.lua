return {
	"neanias/everforest-nvim",
	config = function()
		local theme = require("everforest")
		theme.setup({
			background = "hard",
			transparent_background_level = 0,
			italics = true,
			disable_italic_comments = false,
		})
		vim.cmd("colorscheme everforest")
	end,
}
