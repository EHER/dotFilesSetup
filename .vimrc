" Vundle Baseline {{{

    set shell=bash

    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    Bundle 'gmarik/vundle'

    set exrc
    set secure

    filetype plugin indent on

" }}}

" Plugins {{{

    Bundle 'EHER/vim-bundle-freeze'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neosnippet'
    Bundle 'airblade/vim-gitgutter'
    Bundle 'arnaud-lb/vim-php-namespace'
    Bundle 'austintaylor/vim-commaobject'
    Bundle 'beberlei/vim-php-refactor'
    Bundle 'bling/vim-airline'
    Bundle 'honza/vim-snippets'
    Bundle 'jgdavey/tslime.vim'
    Bundle 'joonty/vim-phpunitqf.git'
    Bundle 'kien/ctrlp.vim'
    Bundle 'majutsushi/tagbar'
    Bundle 'mattn/emmet-vim'
    Bundle 'mattn/gist-vim'
    Bundle 'mattn/webapi-vim'
    Bundle 'nanotech/jellybeans.vim'
    Bundle 'plasticboy/vim-markdown'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'shawncplus/phpcomplete.vim'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'wakatime/vim-wakatime'
    Bundle 'xolox/vim-easytags'
    Bundle 'xolox/vim-misc'

" }}}

" Shortcuts {{{

    " Change leader map
    let mapleader=","

    "key mapping for tab navigation
    nmap <silent> <Tab> :bn<cr>
    nmap <silent> <S-Tab> :bp<cr>

    " disable arrow keys
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>

    cmap <up> <nop>
    cmap <down> <nop>
    cmap <left> <nop>
    cmap <right> <nop>

    " Toggle paste mode
    set pastetoggle=<F2>

    " ;=: trick
    nnoremap ; :

    " Nerdtree shortcut
    map <leader>n :NERDTreeToggle<CR>

    " Quickly edit/reload the vimrc file
    nmap <silent> <leader>ev :e $MYVIMRC<CR>
    nmap <silent> <leader>sv :so $MYVIMRC<CR>

    " Configure php-namespace
    inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
    noremap <Leader>u :call PhpInsertUse()<CR>
    inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
    noremap <Leader>e :call PhpExpandClass()<CR>

    " Map php refactor
    let g:no_php_maps = 1
    vmap <Leader>pem :call ExtractMethod()<CR>
    vmap <Leader>pev :call ExtractVariable()<CR>
    nnoremap <Leader>pev :call ExtractVariable()<CR>
    nnoremap <Leader>pep :call ExtractClassProperty()<CR>
    nnoremap <Leader>pei :call ExtractInterface()<CR>
    nnoremap <Leader>prlv :call RenameLocalVariable()<CR>
    nnoremap <Leader>prcv :call RenameClassVariable()<CR>
    nnoremap <Leader>piaf :call ImplementAbstractFunctions()<CR>

    " Tagbar
    nmap <Leader>c :TagbarToggle<CR>

" }}}

" Display stuffs {{{

    " For spaces instead of tabs
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab

    " Tabs represented as a dot
    set listchars=tab:\.\ ,trail:-
    set list

    " Display line number
    set number

    " This highlights the background in a subtle red for text that goes over the 80 " column limit (subtle in GUI mode, anyway - in terminal mode it's less so).
    highlight OverLength ctermbg=darkred ctermfg=white guibg=#3F3F3F
    match OverLength /\%81v.\+/

    " Color Scheme
    colorscheme jellybeans

    " Enable syntax colors
    syntax enable

    " Search stuffs
    set hlsearch                        " highlight search terms
    set incsearch                       " show search matches as you type
    nmap <silent> ,/ :nohlsearch<CR>    " Clear last search

    " Enable wrap
    set wrap

    " Status Line
    set laststatus=2

    " Airline
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    let g:airline_detect_paste=1

" }}}

" Etc {{{

    " Disable backup and swap
    set nobackup
    set noswapfile

    " have unsaved file in buffer
    set hidden

    " Configure terminal stuffs
    set title                " change the terminal's title
    set visualbell           " don't beep
    set noerrorbells         " don't beep

    " Enable autocomplete
    let g:neocomplcache_enable_at_startup = 1

    " Configure phpcs
    let g:syntastic_php_phpcs_args = "--report=csv --standard=PSR2"

    " Tslime
    vmap <C-c><C-c> <Plug>SendSelectionToTmux
    nmap <C-c><C-c> <Plug>NormalModeSendToTmux
    nmap <C-c>r <Plug>SetTmuxVars

    " Plugin key-mappings.
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    xmap <C-k>     <Plug>(neosnippet_expand_target)

" }}}

