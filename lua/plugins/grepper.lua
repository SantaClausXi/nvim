local Plugin = { "mhinz/vim-grepper" }

Plugin.keys = {
	{
		"<F4>",
		":Grepper -tool grep -cword -noprompt<CR>",
		mode = "n",
	},
	{
		"<F4>",
		'"zy:Grepper -tool grep -query "<C-R>z"<CR>',
		mode = "v",
	},
}

return Plugin
