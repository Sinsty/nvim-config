:set mouse
:set number
:set relativenumber
:set smarttab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set autoindent


call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'neovim/nvim-lspconfig'

call plug#end()


let g:airline_theme='deus'


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


colorscheme catppuccin-frappe


highlight Normal ctermbg=none guibg=none
highlight NormalNC ctermbg=none guibg=none
hi LineNr guifg=#999999 ctermfg=8


lua << EOF
	require('lua.lsp')
EOF

