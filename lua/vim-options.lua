vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set number")

-- Toggle comments with Ctrl + /
vim.keymap.set("n", "<C-_>", function()
	require("Comment.api").toggle.linewise.current()
end, { noremap = true, silent = true })

vim.keymap.set("v", "<C-_>", function()
	require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, { noremap = true, silent = true })
