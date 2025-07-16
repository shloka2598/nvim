local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
	capabilities = capabilities,
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
