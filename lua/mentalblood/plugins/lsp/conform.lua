return {
	"https://codeberg.org/mentalblood/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			json = { "prettierd" },
			jsonc = { "prettierd" },
			yaml = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			html = { "prettierd" },
			ejs = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			markdown = { "prettierd" },
			python = { "isort", "black" },
			cpp = { "clang-format" },
			["_"] = { "trim_whitespace" },
		},
		format_on_save = {
			lsp_fallback = true,
		},
	},
}
