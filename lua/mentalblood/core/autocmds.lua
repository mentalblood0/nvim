vim.api.nvim_create_autocmd({ "CmdlineLeave" }, {
	pattern = "*",
	callback = function()
		vim.opt.number = false
	end,
	nested = true,
})

vim.api.nvim_create_augroup("AutoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.nim",
	group = "AutoFormat",
	callback = function()
		if vim.bo.filetype == "lua" then
			vim.cmd("silent Neoformat nph")
		else
			vim.cmd("silent Neoformat")
		end
	end,
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.lua",
	group = "AutoFormat",
	callback = function()
		vim.cmd("silent Neoformat")
	end,
})
