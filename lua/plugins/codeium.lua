return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	event = "InsertEnter",
	config = function()
		require("codeium").setup({
			enable_chat = false,
		})
	end,
}
