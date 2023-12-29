vim.api.nvim_create_autocmd({ "BufLeave" }, { pattern = "*", command = "wa", nested = true })
-- vim.api.nvim_create_autocmd({ "CmdlineEnter" }, { pattern = "*", command = "set nu", nested = true })
-- vim.api.nvim_create_autocmd({ "CmdlineLeave" }, { pattern = "*", command = "set nonu", nested = true })
-- vim.api.nvim_create_autocmd({ "CursorMoved" }, { pattern = "*", command = "norm zz", nested = true })
vim.api.nvim_create_autocmd(
	{ "BufWritePost", "BufEnter" },
	{ pattern = "*", command = "set nofoldenable foldmethod=manual foldlevelstart=99" }
)
