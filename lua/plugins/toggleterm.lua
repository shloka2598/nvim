return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local toggleterm = require("toggleterm")
		local Terminal = require("toggleterm.terminal").Terminal

		toggleterm.setup({
			direction = "float",
			float_opts = {
				border = "rounded",
			},
			start_in_insert = true,
			close_on_exit = false,
			shade_terminals = false,
			persist_mode = true,
		})

		local run_term = Terminal:new({
			direction = "float",
			close_on_exit = false,
			hidden = true,
		})

		vim.keymap.set("n", "<leader>t", function()
			run_term:toggle()
		end, { desc = "Toggle Run Terminal" })

		vim.keymap.set("n", "<leader>r", function()
			vim.cmd("write")

			local file = vim.fn.expand("%:p")
			local output = vim.fn.expand("%:p:r")
			local ext = vim.fn.expand("%:e")

			local cmd = nil

			if ext == "c" then
				cmd = string.format("gcc -g -Wall '%s' -o '%s' && '%s'", file, output, output)
			elseif ext == "cpp" or ext == "cc" or ext == "cxx" then
				cmd = string.format("g++ -g -std=c++23 -Wall '%s' -o '%s' && '%s'", file, output, output)
			else
				print("Unsupported file type: " .. ext)
				return
			end

			run_term:open()
			run_term:send(cmd)
		end, { desc = "Compile & Run (controlled)" })
	end,
}
