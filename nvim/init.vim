autocmd! FileType c,cpp,java,php call CSyntaxAfter()

let g:python3_hostt_prog='/home/zero/.pyenv/versions/neovim/bin/python'
let g:ruby_host_prog='/home/zero/.gem/ruby/2.5.0/bin/neovim-ruby-host'
"sets
set clipboard+=unnamedplus
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set shiftwidth=2        " Indentation amount for < and > commands.
set linespace=0
set expandtab
set tabstop=2
set softtabstop=2
set wildmode=full
filetype plugin indent on


"vim-plug
call plug#begin('~/.config/nvim/plugin')

" NERDTree
"Plug 'scrooloose/nerdtree'

"unite
Plug 'Shougo/unite.vim'

"neoformat
Plug 'sbdchd/neoformat'

"indentations
Plug 'Yggdroot/indentLine'

"supertab
Plug 'ervandew/supertab'

"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"autocomplete plugin
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"colorscheme plugin
Plug 'Soares/base16.nvim'
Plug 'chriskempson/base16-vim'

"neomake
Plug 'neomake/neomake'

"vim-run 
Plug 'sbdchd/vim-run'

"vim-polyglot
Plug 'sheerun/vim-polyglot'

"statuslines
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"delimitate
Plug 'Raimondi/delimitMate'

"filer
Plug 'Shougo/vimfiler.vim'
"javacomplete2
Plug 'artur-shaik/vim-javacomplete2'

"emmet
Plug 'mattn/emmet-vim'

call plug#end()
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

"globals
let base16colorspace=256 
let g:deoplete#enable_at_startup = 1
let g:base16_transparent_background = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"globals of neomake
let g:myntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_ballons=has('ballon_eval')
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=3
let g:syntastic_ignore_files = ['^/usr/', '*node_modules*', '*vendor*', '*build*', '*LOCAL*', '*BASE', '*REMOTE*']
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_javascript_checkers=['jshint', 'jscs']
let g:syntastic_json_checkers=['jsonlint', 'jsonval']
let g:syntastic_ruby_checkers=['rubocop','mri']
let g:syntastic_perl_checkers=['perl','perlcritic','podchecker']
let g:syntastic_python_checkers=['pylint','pep8','python']
let g:syntastic_cpp_checkers=['gcc','cppcheck','cpplint','ycm','clang_tidy','clang_check']
let g:syntastic_c_checkers=['gcc','make','cppcheck','clang_tidy','clang_check']
let g:syntastic_haml_checkers=['haml_lint', 'haml']
let g:syntastic_html_checkers=['jshint']
let g:syntastic_yaml_checkers=['jsyaml']
let g:syntastic_sh_checkers=['sh','shellcheck','checkbashisms']
let g:syntastic_vim_checkers=['vimlint']
let g:syntastic_enable_perl_checker=1
let g:syntastic_c_clang_tidy_sort=1
let g:syntastic_c_clang_check_sort=1
let g:syntastic_c_remove_include_errors=1
let g:syntastic_quiet_messages = { "level": "[]", "file": ['*_LOCAL_*', '*_BASE_*', '*_REMOTE_*']  }
let g:syntastic_stl_format = '[%E{E: %fe #%e}%B{, }%W{W: %fw #%w}]'
let g:syntastic_java_javac_options = "-g:none -source 8 -Xmaxerrs 5 -Xmaswarns 5" 

"globals of vim-run
"let g:run_cmd_java = ['javac', '-g:none', run#defaults#fullfilepath(),'&&', 'java', run#defaults#basefilename()]
let g:run_cmd_python = ['python3']

"globals of snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"indentLine
let g:indentLine_enabled=1
let g:indentLine_char= '|'

"supertab
let delimitMate_expand_cr = 1

"vimfiler
let g:vimfiler_as_default_explorer = 1

"nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd vimenter * NERDTree
let g:NERDTreeMinimaUI=1
let g:NERDTreeDirArrows=0

"hybrid
set background=dark
"colorscheme murphy 
"colorscheme tomorrow-night-eighties
colorscheme dark_plus
