return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")

		vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, {
			desc = "Toggle breakpoint",
		})
		vim.keymap.set("n", "<F5>", dap.continue, {
			desc = "Continue",
		})
		vim.keymap.set("n", "<leader>dr", dap.restart, {
			desc = "Restart",
		})
		vim.keymap.set("n", "<leader>dt", dap.terminate, {
			desc = "Terminate",
		})
		vim.keymap.set("n", "<F10>", dap.step_over, {
			desc = "Step into",
		})
		vim.keymap.set("n", "<F11>", dap.step_into, {
			desc = "Step over",
		})

		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = "C:\\Users\\Necheporenko_s_iu\\Downloads\\ms-vscode.cpptools-1.21.3@win32-x64\\debugAdapters\\bin\\OpenDebugAD7.exe",
			options = {
				detached = false,
			},
		}
		dap.adapters.gdb = {
			type = "executable",
			command = "gdb",
			args = { "-i", "dap" },
		}
		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				command = "C:\\Users\\Necheporenko_s_iu\\Downloads\\codelldb-x86_64-windows\\adapter\\codelldb.exe",
				args = { "--port", "${port}" },

				-- On windows you may have to uncomment this:
				-- detached = false,
			},
		}
		dap.configurations.cpp = {
			{
				name = "Launch file",

				type = "cppdbg",
				stopAtEntry = true,
				-- type = "gdb",
				-- stopAtBeginningOfMainSubprogram = false,

				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
			},
			{
				name = "Attach to gdbserver :1234",
				type = "cppdbg",
				request = "launch",
				MIMode = "gdb",
				miDebuggerServerAddress = "localhost:1234",
				miDebuggerPath = "C:\\Users\\Necheporenko_s_iu\\gcc\\bin\\gdb.exe",
				cwd = "${workspaceFolder}",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
			},
		}
	end,
}
