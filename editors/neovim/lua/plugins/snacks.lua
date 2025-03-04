return {
	"folke/snacks.nvim",
	keys = {
		{
			"<leader>fc",
			function()
				Snacks.picker.files({
					dirs = type(vim.fn.stdpath("config")) == "string" and { vim.fn.stdpath("config") }
						or vim.fn.stdpath("config"),
					follow = true,
				})
			end,
			desc = "Find config files",
		},
	},
}
