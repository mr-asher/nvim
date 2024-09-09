return {
	{
		-- Autoformat
		"stevearc/conform.nvim",
		dependencies = { "mason.nvim" },
		cmd = "ConformInfo",
		lazy = true,
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ timeout_ms = 3000 })
				end,
				mode = { "n", "v" },
				desc = "[F]ormat buffer",
			},
		},
		opts = {
			format = {
				timeout_ms = 3000,
				async = false,
				quiet = false,
				lsp_format = "fallback",
			},
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = "fallback",
			},
			-- format_on_save = function(bufnr)
			-- 	-- Disable "format_on_save lsp_fallback" for languages that don't
			-- 	-- have a well standardized coding style. You can add additional
			-- 	-- languages here or re-enable it for the disabled ones.
			-- 	local disable_filetypes = { c = true, cpp = true }
			-- 	return {
			-- 		timeout_ms = 500,
			-- 		lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			-- 	}
			-- end,
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform can also run multiple formatters sequentially
				-- python = {"ruff" },
				python = { "black", "isort" },
				--
				-- You can use a sub-list to tell conform to run *until* a formatter
				-- is found.
				scss = { { "prettierd", "prettier" } },
				javascript = { { "prettierd", "prettier" } },
				javascriptreact = { { "prettierd", "prettier" } },
				htmldjango = { "djlint" },

				-- bash
				sh = { "shfmt" },
			},
		},
	},
}
