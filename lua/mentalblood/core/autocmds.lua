vim.api.nvim_create_autocmd({ "CmdlineLeave" }, {
	pattern = "*",
	callback = function()
		vim.opt.number = false
	end,
	nested = true,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		if vim.bo.filetype == "nim" then
			vim.cmd("silent Neoformat nph")
		else
			vim.cmd("silent Neoformat")
		end
	end,
})
