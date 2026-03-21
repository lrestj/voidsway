""""" NEOVIM CONFIGURATION """""

    "My remaps
    let mapleader=" "
    nnoremap <BS> X
    nnoremap Q ZQ
    nnoremap <leader><leader> :set relativenumber!<CR>
    nnoremap <leader>, :set nohlsearch<CR>
    noremap - :Yazi<CR>

    "Select all and sudo trick
    noremap <leader>a :normal! ggV$G$<CR>
    command! W execute 'SudaWrite<CR>'

    "Windows rearrange
    noremap <leader>r <C-w>r

    "Buffers prev, next, delete,show and new vertical split
    noremap <leader>b :bp<CR>
    noremap <leader>n :bn<CR>
    noremap <leader>x :bd<CR>
    nnoremap <leader><Tab> :buffer<Space><Tab>
    noremap <leader>v :vnew<CR>

    "FZF settings
    let g:fzf_vim = {}
    let g:fzf_vim.command_prefix = 'Fzf'
    nnoremap <A-a> :FzfBLines<CR>
    nnoremap <A-s> :FzfLines<CR>
    nnoremap <A-d> :FzfFiles<CR>
    nnoremap <A-f> :FzfHistory<CR>
    nnoremap <A-g> :FzfRg<CR>
    nnoremap <A-b> :FzfBuffers<CR>
    nnoremap <A-c> :FzfChanges<CR>
    nnoremap <A-m> :FzfMarks<CR>
    nnoremap <A-j> :FzfJumps<CR>
    nnoremap <A-.> :FzfHistory:<CR>
    nnoremap <A-,> :FzfHistory/<CR>

    "Optional settings
    colorscheme wildcharm
    set title titlestring=%F
    set rulerformat=%43(\ \ %v\ \ \ %l/%L\ \ %p%%%=\ \ \%)
    set cul nu lz
    set directory=~/Public/
    set ignorecase smartcase
    set scrolloff=2
    set showmatch mat=2
    set spelllang=cs,en
    set softtabstop=4 shiftwidth=4 expandtab
    set wildcharm=<Tab>
    set shada=!,'30,<50,s10,h
    set undofile undolevels=5000
    let g:suda#prompt = 'Heslo: '

    "Statusline & gui background
    set laststatus=1
    highlight StatusLine guifg=#005f00 guibg=#000000
    high Normal guibg=#1c1c1c
    high NonText guibg=#1c1c1c
    high LineNr guibg=n#1c1c1c
         

   "Plugins
   call plug#begin()
     " List your plugins here
     Plug 'mikavilpas/yazi.nvim'
     Plug 'nvim-lua/plenary.nvim'
     Plug 'junegunn/fzf.vim'
   call plug#end()


""""" END OF FILE """""
