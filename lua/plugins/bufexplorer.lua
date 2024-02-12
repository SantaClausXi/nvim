local Plugin = { "jlanzarotta/bufexplorer" }

Plugin.enabled = false

Plugin.keys = {
	{
		"<F3>",
		":BufExplorer<CR>",
		mode = "n",
	},
}

return Plugin
