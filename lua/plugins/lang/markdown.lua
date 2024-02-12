return {

	-- Treesitter
	require("util").ts_ensure_installed({ "markdown" }),

	-- LSP
	{
		"neovim/nvim-lspconfig",
		optional = true,
		opts = {
			servers = {
				-- Ensure mason installs the server
				marksman = {},
			},
		},
	},
}
