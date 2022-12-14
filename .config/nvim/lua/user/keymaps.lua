local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- keymap("n","q","<Nop>", opts)

-- disable all macro recording keys except 1-0 for macro recording
keymap("n","qa","<Nop>", opts)
keymap("n","qb","<Nop>", opts)
keymap("n","qc","<Nop>", opts)
keymap("n","qd","<Nop>", opts)
keymap("n","qd","<Nop>", opts)
keymap("n","qe","<Nop>", opts)
keymap("n","qf","<Nop>", opts)
keymap("n","qg","<Nop>", opts)
-- keymap("n","qh","<Nop>", opts)
-- keymap("n","qi","<Nop>", opts)
-- keymap("n","qj","<Nop>", opts)
-- keymap("n","qk","<Nop>", opts)
keymap("n","ql","<Nop>", opts)
keymap("n","qm","<Nop>", opts)
keymap("n","qn","<Nop>", opts)
keymap("n","qo","<Nop>", opts)
keymap("n","qp","<Nop>", opts)
keymap("n","qq","<Nop>", opts)
keymap("n","qr","<Nop>", opts)
keymap("n","qs","<Nop>", opts)
keymap("n","qt","<Nop>", opts)
keymap("n","qu","<Nop>", opts)
keymap("n","qv","<Nop>", opts)
keymap("n","qx","<Nop>", opts)
keymap("n","qy","<Nop>", opts)
keymap("n","qz","<Nop>", opts)
keymap("n","qA","<Nop>", opts)
keymap("n","qB","<Nop>", opts)
keymap("n","qC","<Nop>", opts)
keymap("n","qD","<Nop>", opts)
keymap("n","qD","<Nop>", opts)
keymap("n","qE","<Nop>", opts)
keymap("n","qF","<Nop>", opts)
keymap("n","qG","<Nop>", opts)
keymap("n","qH","<Nop>", opts)
keymap("n","qI","<Nop>", opts)
keymap("n","qJ","<Nop>", opts)
keymap("n","qK","<Nop>", opts)
keymap("n","qL","<Nop>", opts)
keymap("n","qM","<Nop>", opts)
keymap("n","qN","<Nop>", opts)
keymap("n","qO","<Nop>", opts)
keymap("n","qP","<Nop>", opts)
keymap("n","qQ","<Nop>", opts)
keymap("n","qR","<Nop>", opts)
keymap("n","qS","<Nop>", opts)
keymap("n","qT","<Nop>", opts)
keymap("n","qU","<Nop>", opts)
keymap("n","qV","<Nop>", opts)
keymap("n","qX","<Nop>", opts)
keymap("n","qY","<Nop>", opts)
keymap("n","qZ","<Nop>", opts)

vim.g.mapleader = "q"
vim.g.maplocalleader = "q"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Vim Slime
keymap('x', '<C-c>c', '<Plug>SlimeRegionSend', term_opts)
keymap('n', '<C-c>c', '<Plug>SlimeParagraphSend', term_opts)
keymap('n', '<C-c><C-c>', '<Plug>SlimeLineSend', term_opts)

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", "<cmd>wincmd h<cr>", opts)
keymap("n", "<leader>j", "<cmd>wincmd j<cr>", opts)
keymap("n", "<leader>k", "<cmd>wincmd k<cr>", opts)
keymap("n", "<leader>l", "<cmd>wincmd l<cr>", opts)
keymap("n","<leader>x","<cmd>wincmd x<CR>", opts)
-- keymap("n", "<C-h>", "<cmd>wincmd h<cr>", opts)
-- keymap("n", "<C-j>", "<cmd>wincmd j<cr>", opts)
-- keymap("n", "<C-k>", "<cmd>wincmd k<cr>", opts)
-- keymap("n", "<C-l>", "<cmd>wincmd l<cr>", opts)
-- keymap("n","<C-x>","<cmd>wincmd x<CR>", opts)


-- Autopep 8 --
keymap("n", "<leader>8", "<cmd>Autopep8<cr>",opts)

-- NvimTreeToggle --
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Tabs --
keymap("n","tc","<cmd>tabnew<cr>",opts)

-- Resize with arrows
keymap("n", "<C-Up>", "<cmd>resize +2<CR>", opts)
keymap("n", "<C-Down>", "<cmd>resize -2<CR>", opts)
keymap("n", "<C-Left>", "<cmd>vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<C-j>", "<cmd>bnext<CR>", opts)
-- keymap("n", "<C-k>", "<cmd>bprevious<CR>", opts)
-- keymap("n","<C-j>", "<expr> <C-j> pumvisible() ? "\"<C-n>" : "\<C-j>",opts)
-- keymap("n","<C-k>", "<expr> <C-k> pumvisible() ? "\"<C-n>" : "\<C-k>",opts)
vim.cmd [[ inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>" ]]
vim.cmd [[ inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>" ]]

-- Split screen
keymap("n","s","<Nop>",opts)
keymap("n","<leader>s","<cmd>vsplit<CR>", opts)
keymap("n","<leader>v","<cmd>split<CR>", opts)

-- Telescope
keymap("n","<leader>ff","<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
keymap("n","<leader>g","<cmd>Telescope git_status<cr>", opts)
keymap("n","<leader>d","<cmd>Telescope lsp_document_symbols<cr>", opts)
keymap("n","<leader>r","<cmd>Telescope oldfiles<cr>", opts)

-- Auto-setup
-- keymap("n","<leader>t","<cmd>vsplit term://zsh<CR>",opts) -- <cmd>tabnew term://zsh<CR> <cmd>tabprevious<CR> <cmd>wincmd h<cr>", opts)
keymap("n","<leader>t","<cmd>vsplit term://toolbox enter dev<CR>",opts) -- <cmd>tabnew term://zsh<CR> <cmd>tabprevious<CR> <cmd>wincmd h<cr>", opts)
keymap("n","go","<C-o>",opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "qq", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<leader><S-j>", "<cmd>m .+1<CR>==", opts)
keymap("n", "<leader><S-k>", "<cmd>m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<leader><S-j>", "<cmd>move '>+1<CR>gv-gv", opts)
keymap("x", "<leader><S-k>", "<cmd>move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "qq", "<C-\\><C-n>", opts)
keymap("t", "qh", "<C-\\><C-n><C-w>h", term_opts)
keymap("t", "qj", "<C-\\><C-n><C-w>j", term_opts)
keymap("t", "qk", "<C-\\><C-n><C-w>k", term_opts)
keymap("t", "ql", "<C-\\><C-n><C-w>l", term_opts)
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", term_opts)

-- Nvim-Tree --
keymap("n", "<leader>n","<cmd>NvimTreeToggle<CR>", opts)

-- Better normal_mode navigation
-- keymap("n", "qh", "<C-\\><C-n><C-w>h", opts)
-- keymap("n", "qj", "<C-\\><C-n><C-w>j", opts)
-- keymap("n", "qk", "<C-\\><C-n><C-w>k", opts)
-- keymap("n", "ql", "<C-\\><C-n><C-w>l", opts)


