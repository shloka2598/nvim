return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			close_on_exit = false,
			shell = vim.o.shell,
		})

		-- Compile and run current C++ file
		vim.keymap.set("n", "<leader>r", function()
			vim.cmd("write") -- save file
			local file = vim.fn.expand("%:p")
			local output = vim.fn.expand("%:p:r")
			local cmd = string.format("g++ -g -std=c++23 -Wall '%s' -o '%s' && '%s'", file, output, output)

			local Terminal = require("toggleterm.terminal").Terminal
			local run_cpp = Terminal:new({
				cmd = cmd,
				direction = "float",
				close_on_exit = false,
				hidden = true,
			})

			run_cpp:toggle()
		end, { desc = "Compile and Run C++" })
	end,
}
