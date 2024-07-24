vim.api.nvim_create_autocmd({ "BufLeave" }, { pattern = "*", command = "wa", nested = true })
vim.api.nvim_create_autocmd({ "CmdlineLeave" }, {
	pattern = "*",
	callback = function()
		vim.opt.number = false
	end,
	nested = true,
})
vim.api.nvim_create_autocmd(
	{ "BufWritePost", "BufEnter" },
	{ pattern = "*", command = "set nofoldenable foldmethod=manual foldlevelstart=99" }
)
