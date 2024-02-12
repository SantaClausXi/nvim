------------------------------- Editor Behavior -------------------------------
vim.opt.mouse = "ar" -- Turn on mouse mode
vim.opt.lazyredraw = true --

-- An .editorconfig file will override other options specified here
vim.g.editorconfig = true -- Enables .editorconfig files for project specific formatting

-- Default Tab Behavior
vim.opt.autoindent = true -- Copy indentation when starting a new line
vim.opt.tabstop = 4 -- Tab size
vim.opt.shiftwidth = 4 -- Number of spaces for (auto)indent
vim.opt.expandtab = true -- Turn tab into spaces

-- Line Numbers
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers

-- Default User Interface Behavior
vim.opt.wrap = false -- Wrap text
vim.opt.termguicolors = true -- Helps with displaying colors correctly

-- Searching Behavior
vim.opt.hlsearch = true -- Highlight search term

-- Set command mode autocomplete behavior
--  Tab completes until the longest matching string, two tabs lists available commands,
--  then one more tab selects the first match from the list.
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest"
-------------------------------------------------------------------------------

vim.api.nvim_exec2(
	[[
  hi Comment ctermfg=230
  hi Search ctermfg=black ctermbg=yellow
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/
]],
    {}
)

vim.api.nvim_exec2(
	[[
  if filereadable(".project.vim")
    source .project.vim
  endif
]],
    {}
)
