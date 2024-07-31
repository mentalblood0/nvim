return {
	"https://codeberg.org/mentalblood/no-neck-pain.nvim",
	config = function()
		local nnp = require("no-neck-pain")
		nnp.setup({
			width = 124,
			autocmds = {
				enableOnVimEnter = true,
			},
			mappings = {
				enabled = true,
			},
		})
	end,
}
