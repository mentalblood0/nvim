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

vim.api.nvim_create_augroup("AutoFormat", {})
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*.nim",
	group = "AutoFormat",
	callback = function()
		vim.cmd("silent !~/.nimble/bin/nph %")
		vim.cmd("edit")
		vim.cmd("normal zz")
	end,
})
