local opt = vim.opt

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
	command = "if mode() != 'c' | checktime | endif",
	pattern = { "*" },
})

opt.laststatus = 0
opt.cmdheight = 0
opt.fillchars = "eob: ,vert: "
opt.foldenable = false
opt.autoindent = true
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.cursorline = true
opt.expandtab = true
opt.autowriteall = true
opt.ignorecase = true
opt.mouse = ""
opt.number = false
opt.relativenumber = false
opt.shiftwidth = 2
opt.showmode = false
opt.signcolumn = "no"
opt.smartcase = true
opt.smartindent = true
opt.spelllang = { "en" }
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.tabstop = 2
opt.termguicolors = true
opt.undodir = vim.env.HOME .. "/.undodir"
opt.undofile = true
opt.undolevels = 10000
opt.wrap = true
