return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				globalstatus = true,
				section_separators = { left = "", right = "" },
				component_separators = "",
				disabled_filetypes = {},
			},

			sections = {
				lualine_a = {
					{ "mode", icon = "" },
				},
				lualine_b = {
					"branch",
				},
				lualine_c = {
					{ "filename", path = 1 },
				},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {
					"location",
				},
			},

			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {
					{ "filename", path = 1 },
				},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
