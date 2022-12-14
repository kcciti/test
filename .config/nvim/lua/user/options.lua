-- vim.cmd [[ let $GIT_SSL_NO_VERIFY = 'true' ]]

-- fix highlight


local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  guifont = "FiraMono Nerd Font Mono:h12:w57", -- the font used in graphical neovim applications
  autochdir = true,                        -- automatically change the working directory
  foldlevel = 99,                          -- folding
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
vim.cmd [[ autocmd BufWinEnter,WinEnter term://* startinsert ]]
vim.cmd [[ autocmd BufLeave term://* stopinsert ]]

-- allow for pop-up diagnostics
vim.cmd [[ autocmd CursorHold * lua vim.diagnostic.open_float({ border = "rounded" }) ]]
vim.cmd [[ autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help({ border = "rounded" }) ]]
vim.opt.path:remove "/usr/include"
vim.opt.path:append "**"
vim.wildignorecase = true
vim.opt.wildignore:append "**/.git/*"
vim.opt.wildignore:append "**/.venv/*"
vim.opt.wildignore:append "**/__pycache__/*"
vim.cmd [[ nnoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>" ]]
vim.cmd [[ nnoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>" ]]

-- for autopep8 --
vim.cmd [[ let g:autopep8_max_line_length=1000000 ]]
vim.cmd [[ set wrap ]]

-- orgmode --
vim.opt.conceallevel=1
vim.opt.concealcursor='nc'

-- relative number --
vim.cmd [[ set number relativenumber ]]
vim.cmd [[ set nu rnu ]]

-- setup folding --
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
-- set LSP highlights --
-- shell --
-- vim.cmd [[ set shell=/home/kchuangk/dev.sh ]]
-- vim.cmd [[ command! Shell :set shell = toolbox\ enter\ dev ]]
-- vim.cmd [[ let &shell='toolbox enter dev' ]]
--
-- remap record macros key --
-- vim.cmd [[ nnoremap  q <Nop> ]]

