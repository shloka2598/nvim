local border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border })

vim.diagnostic.config({
	virtual_text = false,
	underline = true,
	signs = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = border,
		source = "always",
	},
})

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic message" })

vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
})
