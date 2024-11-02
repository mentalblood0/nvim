-- return {
-- 	"neanias/everforest-nvim",
-- 	config = function()
-- 		local theme = require("everforest")
-- 		theme.setup({
-- 			background = "hard",
-- 			transparent_background_level = 0,
-- 			italics = true,
-- 			disable_italic_comments = false,
-- 		})
-- 		vim.cmd("colorscheme everforest")
-- 	end,
-- }
return {
	"cdmill/neomodern.nvim",
	priority = 1000,
	config = function()
		require("neomodern").setup({ theme = "daylight" })
		vim.cmd("colorscheme daylight")
	end,
}
