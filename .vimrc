set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/The-NERD-tree'  
"Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/Tagbar'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/DoxyGen-Syntax'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-scripts/cscope.vim'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'

"Plugin 'godlygeek/tabular'
"Plugin 'posva/vim-vue'
"Plugin 'pangloss/vim-javascript'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" Enable syntax highlight
syntax enable
syntax on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
				\	exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
	filetype plugin indent on
endif

"" Tlist config
""let Tlist_Auto_Open = 1
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_Use_Right_Window =1
"let Tlist_WinWidth = 31
"noremap <C-F8> :TlistToggle<CR>
"noremap <C-F6> :!ctags -R<CR>

" Tagbar
let g:tagbar_autopreview = 1
let g:tagbar_sort = 0
let g:tagbar_width = 31
noremap <C-F8> :TagbarToggle<CR>
noremap <C-F6> :!ctags -R<CR>

" NERD Tree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
noremap <C-F7> :NERDTreeToggle<CR>

"Cscope quickfix window
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>

"syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"YouCompleteMe
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_show_diagnostics_ui = 1
"let g:ycm_max_num_candidates = 50
"let g:ycm_max_num_identifier_candidates = 10
"let g:ycm_auto_trigger = 1
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_warning_symbol = '>>'
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_echo_current_diagnostic = 1
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_collect_identifiers_from_tags_files=1
"nnoremap <silent> gb :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Command
set number      " Show column number
set mouse=a     " Enable mouse usage (all modes)
set showmatch	" Show matching brackets.
"set tags=./tags;/
set encoding=utf-8
set termencoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent
set cindent
set completeopt-=preview  " disable scratch preview

"Doxygen
let g:DoxygenToolkit_authorName="Tao Yang"
let g:doxygenToolkit_briefTag_funcName="yes"
