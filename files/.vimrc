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
    Bundle 'Shougo/neosnippet-snippets'
    Bundle 'adoy/vim-php-refactoring-toolbox'
    Bundle 'afternoon/vim-phpunit'
    Bundle 'airblade/vim-gitgutter'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'arnaud-lb/vim-php-namespace'
    Bundle 'austintaylor/vim-commaobject'
    Bundle 'beberlei/vim-php-refactor'
    Bundle 'bling/vim-airline'
    Bundle 'nelsyeung/twig.vim'
    Bundle 'hhvm/vim-hack'
    Bundle 'honza/vim-snippets'
    Bundle 'jgdavey/tslime.vim'
    Bundle 'jiangmiao/auto-pairs'
    Bundle 'jistr/vim-nerdtree-tabs'
    Bundle 'joonty/vim-phpunitqf.git'
    Bundle 'kien/ctrlp.vim'
    Bundle 'majutsushi/tagbar'
    Bundle 'mattn/emmet-vim'
    Bundle 'mattn/gist-vim'
    Bundle 'mattn/webapi-vim'
    Bundle 'nanotech/jellybeans.vim'
    Bundle 'plasticboy/vim-markdown'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'scrooloose/nerdtree'
    Bundle 'scrooloose/syntastic'
    Bundle 'shawncplus/phpcomplete.vim'
    Bundle 'tpope/vim-dispatch.git'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-repeat'
    Bundle 'tpope/vim-surround'
    Bundle 'vim-php/tagbar-phpctags.vim'
    Bundle 'vim-scripts/vim-auto-save'
    Bundle 'wakatime/vim-wakatime'
    Bundle 'xolox/vim-misc'
    Bundle 'xuyuanp/nerdtree-git-plugin'
    Plugin 'mkusher/padawan.vim'
    
    " Bundle 'Shougo/vimproc'
    " Bundle 'Shougo/unite.vim'
    " Bundle 'm2mdas/phpcomplete-extended'
" }}}

" Shortcuts {{{

    " Change leader map
    let mapleader=","

    " key mapping buffer navigation
    nmap <silent> <leader>bn :bn<cr>
    nmap <silent> <leader>bp :bp<cr>
    nmap <silent> <leader>bd :bd<cr>

    " key mapping tab navigation
    nmap <silent> <leader>tn :tabnext<cr>
    nmap <silent> <leader>tp :tabprevious<cr>
    nmap <silent> <leader>tc :tabnew<cr>

    " tab key mapping
    nmap <silent> <Tab> :tabnext<cr>
    nmap <silent> <S-Tab> :tabprevious<cr>

    " disable arrow keys
    map <up> <nop>
    map <down> <nop>
    map <left> <nop>
    map <right> <nop>

    cmap <up> <nop>
    cmap <down> <nop>
    cmap <left> <nop>
    cmap <right> <nop>

    " ;=: trick
    nnoremap ; :

    " esc trick
    imap jj <esc>

    " Git / Fugitive
    map <leader>9 :Gstatus<CR>
    map <leader>k :Gcommit<CR>

    " Nerdtree shortcut
    map <Leader>n <plug>NERDTreeMirrorToggle<CR>
    map <leader>N :NERDTreeFind<CR>

    " Quickly edit/reload the vimrc file
    nmap <silent> <leader>ev :tabnew $MYVIMRC<CR>
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

    " Dispatch
    nnoremap <Leader>d :Dispatch<CR>
    autocmd FileType php let b:dispatch = 'phpunit %'

    " Copen
    map co <esc>:copen<cr>
    map cn <esc>:cn<cr>
    map cp <esc>:cp<cr>
    map cc <esc>:cclose<cr>

    " Tslime
    vmap <C-c><C-c> <Plug>SendSelectionToTmux
    nmap <C-c><C-c> <Plug>NormalModeSendToTmux
    nmap <C-c>r <Plug>SetTmuxVars

    " Neosnippet
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    xmap <C-k>     <Plug>(neosnippet_expand_target)
    let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

    " EasyMotion
    let g:EasyMotion_do_mapping = 0
    nmap s <Plug>(easymotion-overwin-f)
    nmap s <Plug>(easymotion-overwin-f2)
    let g:EasyMotion_smartcase = 1
    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)"

    " AutoSave
    nmap <leader>s :AutoSaveToggle<cr>

" }}}

" Theme {{{

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
    "colorscheme jellybeans
    colorscheme solarized
    set background=dark

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
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = '|'

    let g:airline_detect_paste=1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline_left_sep = ''
    let g:airline_right_sep = ''

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

    " .vimrc per project
    set exrc            " enable per-directory .vimrc files
    set secure          " disable unsafe commands in local .vimrc files

    " Enable autocomplete
    let g:neocomplete#enable_at_startup = 1

    " Syntastic checkers
    let g:syntastic_php_checkers = ['php', 'phpcs']

    " Configure phpcs
    let g:syntastic_php_phpcs_args = '--report=csv --standard=PSR2'

    " CtrlP from current path
    let g:ctrlp_working_path_mode = 'ar'

    " Ignore files
    set wildignore+=*/vendor/*,*/coverage/*,*/tmp/*,*/cache/*,*/log/*,*.so,*.swp,*.zip

    " Toggle paste mode
    set pastetoggle=<F2>

    autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

    " The Silver Searcher
    if executable('ag')
      " Use ag over grep
      set grepprg=ag\ --nogroup\ --nocolor

      " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

      " ag is fast enough that CtrlP doesn't need to cache
      let g:ctrlp_use_caching = 0
    endif

    " bind K to grep word under cursor
    nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" }}}
