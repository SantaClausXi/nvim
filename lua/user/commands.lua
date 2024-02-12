local group = vim.api.nvim_create_augroup("user_cmds", { clear = true })

-- TODO: this should be coverted to lua
-- This ports over ctags functionality
vim.api.nvim_exec(
	[[
    " Ctags
    function! s:CtagsHandler(job_id, data, event)
        if a:event == 'exit'
            echo "Generating Tags... Complete"
        endif
    endfunction
    function! GenerateCtags()
        let l:ctags_cmd = "ctags -R --fields=+Slk --c-types=+deftuxgsmp -B --exclude=build --exclude=megainclude ."
        echo "Generating Tags..."
        if has('nvim')
            let job = jobstart(l:ctags_cmd, {'on_exit': function('s:CtagsHandler')})
        else
            call system(l:ctags_cmd)
            call s:CtagsHandler(0, "", 'exit')
        endif
    endfunction
    nnoremap <F12> :call GenerateCtags()<CR> 
]],
	false
)

vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = { "gitcommit" },
	command = [[setlocal tw=72]],
})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = { "rst" },
	command = [[setlocal tw=80]],
})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = { "hog" },
	command = [[set filetype=udevrules]],
})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = { "python" },
	command = [[match OverLenth /\%89v.*/]],
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	group = group,
	pattern = { "wscript" },
	command = [[set filetype=python]],
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	group = group,
	pattern = { "*.bbclass", "*.inc" },
	command = [[set filetype=conf]],
})
