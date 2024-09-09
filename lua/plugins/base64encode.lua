return {
	{
		"taybart/b64.nvim",
		keys = {
			{
				"<leader>6e",
				"<cmd>B64Encode<cr>",
				mode = { "n", "v" },
				desc = "Base64 encode",
			},
			{
        "<leader>6d",
				"<cmd>B64Decode<cr>",
				mode = { "n", "v" },
				desc = "Base64 decode",
			},
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
