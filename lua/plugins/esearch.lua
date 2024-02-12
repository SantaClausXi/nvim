local Plugin = { "eugen0329/vim-esearch" }

Plugin.config = function()
	-- vim.g.esearch = {
	--   adapter = 'rg',
	--   backend = 'nvim',
	--   out = 'win',
	--   batch_size = 1000,
	--   wordchars = '@,48-57,_,192-255',
	-- }
	-- vim.g.esearch.prefill = {'hlsearch', 'cword', 'last'}
	-- vim.g.esearch.root_markers = {''}
	-- vim.g.esearch.win_new = {esearch -> esearch#buf#goto_or_open(esearch.name, 'vertical botright vnew') }

	vim.api.nvim_exec(
		[[
    let g:esearch = {
      \ 'adapter':    'rg',
      \ 'backend':    'nvim',
      \ 'out':        'win',
      \ 'batch_size': 1000,
      \ 'wordchars': '@,48-57,_,192-255',
      \}
    let g:esearch.prefill = ['hlsearch', 'cword', 'last']
    let g:esearch.root_markers = ['']

    let g:esearch.win_new =
         \ {esearch -> esearch#buf#goto_or_open(esearch.name, 'vertical botright vnew') }

    let g:esearch#adapters#rg#options = "--no-ignore-vcs --ignore-file ".$HOME."/.ignore"
    let g:esearch#util#trunc_omission = "|"
  ]],
		false
	)
end

return Plugin
