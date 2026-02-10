-- =========================
-- Core editor options
-- =========================

vim.g.mapleader = " "

-- Indentation
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.linebreak = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.updatetime = 200
vim.opt.timeoutlen = 400
vim.opt.pumblend = 20
vim.opt.guicursor = {
	"n-v-c:block",
	"i-ci-ve:ver25",
	"r-cr:hor20",
}

vim.keymap.set("n", "<C-_>", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle comment line" })

vim.keymap.set("v", "<C-_>", function()
	local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
	vim.api.nvim_feedkeys(esc, "nx", false)
	require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, { desc = "Toggle comment block" })

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format file" })
