return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			close_on_exit = false,
			shell = vim.o.shell,
		})

		vim.keymap.set("n", "<leader>r", function()
			vim.cmd("write") -- save file

			local file = vim.fn.expand("%:p")
			local output = vim.fn.expand("%:p:r")
			local ext = vim.fn.expand("%:e") -- file extension (c / cpp etc.)

			-- choose compiler
			local compiler = ""
			local flags = ""

			if ext == "c" then
				compiler = "gcc"
				flags = "-g -Wall"
			elseif ext == "cpp" or ext == "cc" or ext == "cxx" then
				compiler = "g++"
				flags = "-g -std=c++23 -Wall"
			else
				print("Unsupported file type: " .. ext)
				return
			end

			local cmd = string.format("%s %s '%s' -o '%s' && '%s'", compiler, flags, file, output, output)

			local Terminal = require("toggleterm.terminal").Terminal
			local run_file = Terminal:new({
				cmd = cmd,
				direction = "float",
				close_on_exit = false,
				hidden = true,
			})

			run_file:toggle()
		end, { desc = "Compile and Run C/C++" })
	end,
}
