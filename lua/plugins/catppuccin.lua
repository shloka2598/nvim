return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			term_colors = true,

			styles = {
				comments = { "italic" },
				keywords = { "italic" },
				functions = { "bold" },
			},

			integrations = {
				treesitter = true,
				cmp = true,
				gitsigns = true,
				telescope = true,
				noice = true,
				native_lsp = { enabled = true },
			},
		})

		vim.cmd.colorscheme("catppuccin")

		local transparent_groups = {
			"Normal",
			"NormalFloat",
			"FloatBorder",
			"TelescopeNormal",
			"TelescopeBorder",
			"TelescopePromptNormal",
			"TelescopeResultsNormal",
			"TelescopePreviewNormal",
			"TelescopePromptBorder",
			"TelescopeResultsBorder",
			"TelescopePreviewBorder",
			"SignColumn",
			"EndOfBuffer",
		}

		for _, group in ipairs(transparent_groups) do
			vim.api.nvim_set_hl(0, group, { bg = "none" })
		end
	end,
}
