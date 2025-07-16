local dap = require("dap")
vim.keymap.set("n", "<leader>dn", dap.step_over)
vim.keymap.set("n", "<leader>dm", dap.step_into)
vim.keymap.set("n", "<leader>do", dap.step_out)
vim.keymap.set("n", "<leader>dr", dap.run_last)
vim.keymap.set("n", "<leader>dq", dap.terminate)

vim.keymap.set("n", "<leader>b", function()
	require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

vim.keymap.set("n", "<leader>d", function()
	require("dap").continue()
end, { desc = "Start Debugging" })
