return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("notify").setup({
			background_colour = "#0b0b14",
			fps = 60,
			render = "minimal",
			stages = "fade",
			timeout = 2000,
		})

		require("noice").setup({
			lsp = {
				hover = {
					enabled = true,
				},
				signature = {
					enabled = true,
				},
			},
			presets = {
				bottom_search = false,
				command_palette = true,
				long_message_to_split = true,
			},
		})
	end,
}
