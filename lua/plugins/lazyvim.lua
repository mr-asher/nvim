return {
	{
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{
				"<leader>gg",
				"<cmd>LazyGit<cr>",
				desc = "Launch LazyGit",
			},
		},
	},
}

-- vim: ts=2 sts=2 sw=2 et
