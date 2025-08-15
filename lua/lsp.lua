local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local caps = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
	capabilities = capabilities,
})

lspconfig.pyright.setup({
	capabilities = caps,
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "basic", -- "off" | "basic" | "strict"
				autoImportCompletions = true,
			},
		},
	},
})

-- Autoformat Python files using black on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.py",
	callback = function()
		vim.cmd("silent !black %")
		vim.cmd("edit") -- reload the file so you see changes
	end,
})

vim.diagnostic.config({
	virtual_text = false, -- don't show inline warnings
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always", -- show which LSP gave the message
	},
})

-- Show floating diagnostics on CursorHold
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
})

vim.o.updatetime = 300 -- default is 4000 ms; 300 ms is much faster
