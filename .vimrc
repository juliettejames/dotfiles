" Sets the default vim settings. 
source $VIMRUNTIME/defaults.vim

" Enable syntax highlighting.
syntax on

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set ignorecase      " case insensitive search
set smartcase       " case sensitive if pattern contains upper-case
set nobackup        " disable backup files
set noswapfile      " disable .swp files
set timeoutlen=1000 ttimeoutlen=0 " avoid delay in ESC key
set relativenumber  " line numbering relative to cursor position

"--- Global editing settings ---"
set autoindent       " automatically indent line
set expandtab        " by default expand tabs
set smarttab         " insert tabs on the start of a line according to shidtwidth, not tabstop
set tabstop=4        " set tab to 4 spaces
set shiftwidth=4     " number of space to use for auto-indenting
set backspace=eol,start,indent " allow backspacing over everything in insert mode
set nojoinspaces     " when joining lines, don't put 2 spaces after a full stop.
set scrolloff=5     " minimum number of lines to keep above below cursor
set sidescrolloff=5 " minimum number of columns to keep the the side of the cursor

"--- File Type Settings --
autocmd Filetype html setlocal ts=2 sw=2 expandtab
augroup html
    autocmd!
    autocmd Filetype html abbreviate <buffer> <p <p></p>
    autocmd Filetype html abbreviate <buffer> <a <a href='' target='blank' rel='noopener noreferrer'></a>
    autocmd Filetype html abbreviate <buffer> <a <a href='' target='blank' rel='noopener noreferrer'></a> 
    autocmd Filetype html abbreviate <buffer> <f <figure><cr><img src='' alt=''><cr><figcaption></figcaption><cr></figure>
    autocmd Filetype html abbreviate <buffer> <u <ul><cr></ul>
    autocmd Filetype html abbreviate <buffer> <l <li></li>
    autocmd Filetype html abbreviate <buffer> codepy <pre><cr><code class='language-python'>
    autocmd Filetype html abbreviate <buffer> endcode </code><cr></pre>
    autocmd Filetype html abbreviate <buffer> codeb <pre><cr><code class='language-bash'>
    autocmd Filetype html abbreviate <buffer> coden <pre><cr><code class='language-none'>
augroup END
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab

" --- Set the runtime path to include Vundle and initialize ---
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

" Plugin specific keybindings
map <C-n> :NERDTreeToggle<CR>

