return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local themes = require("telescope.themes")

			telescope.setup({
				defaults = {
					layout_strategy = "horizontal",
					layout_config = {
						width = 0.55,
						height = 0.45,
						prompt_position = "top",
					},
					sorting_strategy = "ascending",
					border = false,
					winblend = 10,
					previewer = false,
				},
			})

			vim.keymap.set("n", "<C-p>", function()
				builtin.find_files(themes.get_dropdown({
					winblend = 20,
					previewer = false,
				}))
			end, { desc = "Find files" })

			vim.keymap.set("n", "<leader>fg", function()
				builtin.live_grep(themes.get_dropdown({
					winblend = 20,
				}))
			end, { desc = "Live grep" })

			vim.keymap.set("n", "<leader>ss", function()
				builtin.lsp_document_symbols(themes.get_dropdown({
					winblend = 20,
				}))
			end, { desc = "Symbols (document)" })

			vim.keymap.set("n", "<C-k>", function()
				builtin.keymaps(themes.get_dropdown({
					winblend = 20,
				}))
			end, { desc = "Keymaps" })
		end,
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = require("telescope.themes").get_dropdown({
						winblend = 20,
						previewer = false,
					}),
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
