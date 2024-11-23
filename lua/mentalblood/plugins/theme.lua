return {
	"cdmill/neomodern.nvim",
	priority = 1000,
	config = function()
		require("neomodern").setup({ theme = "roseprime" })
		vim.cmd("colorscheme roseprime")
	end,
}
