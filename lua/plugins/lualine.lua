return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			return {
				require("lualine").setup({
					options = {
						component_separators = { left = "|", right = "|" },
						section_separators = { left = "", right = "" },
					},
					sections = {
						lualine_a = { "mode" },
						lualine_b = { "branch", "diff", "diagnostics" },
						lualine_c = {
							{ "filetype", icon_only = false, separator = " |", padding = { left = 1, right = 0 } },
							{ "filename" },
						},
						lualine_x = {
							{ "location", separator = " ", padding = { left = 0, right = 0 } },
							{ "progress", padding = { left = 0, right = 1 } },
						},
						lualine_y = {},
						lualine_z = {
							function()
								return " " .. os.date("%R")
							end,
						},
					},
				}),
			}
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
