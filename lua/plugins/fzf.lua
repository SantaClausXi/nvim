local Plugin = { "ibhagwan/fzf-lua" }

-- Plugin.enabled = false

Plugin.dependencies = {
	{ "nvim-tree/nvim-web-devicons" },
	{ "junegunn/fzf", build = "./install --bin" }, -- Installs fzf utility
}

Plugin.keys = function()
	local fzf = require("fzf-lua")
	return {
		-- Buffers and Files --
		{
			"<C-p>",
			function()
				fzf.files()
			end,
			mode = { "n", "v" },
			desc = "Find files",
		},
		{
			"<F3>",
			function()
				fzf.buffers({
					fzf_opts = { ["--layout"] = "reverse" },
				})
			end,
			mode = "n",
			desc = "Find buffers",
		},
		-- LSP/Diagnostics --
		{
			"<leader>fd",
			function()
				fzf.diagnostics_document()
			end,
			mode = "n",
			desc = "List document diagnostics",
		},
		-- Misc --
		{
			"<leader>k",
			function()
				fzf.keymaps()
			end,
			mode = "n",
			desc = "View keymaps",
		},
	}
end

-- {'<leader>fs', ':set operatorfunc=GrepOperator<cr>g@',                   mode = 'n', desc = 'Grep operator'},
-- {'<leader>fs', ':<c-u>call GrepOperator(visualmode())<cr>',              mode = 'v', desc = 'Grep operator'},
-- vim.api.nvim_exec([[
--   function! GrepOperator(type)
--     if a:type ==# 'v'
--       normal! `<v`>y
--     elseif a:type ==# 'char'
--       normal! `[v`]y
--     else
--       return
--     endif
--
--     silent execute "lua require('fzf-lua').grep({search='" . @@ . "'})"
--   endfunction
-- ]], false)

Plugin.opts = {
	fzf_opts = { ["--layout"] = false },
}

return Plugin
