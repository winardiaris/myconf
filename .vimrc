execute pathogen#infect()
call pathogen#helptags()

syntax enable
syntax on
set termguicolors
colorscheme molokai     " colorscheme
set relativenumber      " show line number
set number
set numberwidth=4
set expandtab
set tabstop=2           " Tabs
set shiftwidth=2        " Tabs
set background=dark     " Background
set cursorline          " highlight current line
set showmatch           " highlight matching {}[]()
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set pastetoggle=<F2>
"This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

set mouse=a "enable mouse
set t_Co=256
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline\ Reqular
let g:Powerline_symbols = 'fancy'
let g:multi_cursor_use_default_mapping=1 " Multiple Cursor
let g:multi_cursor_start_word_key='g<C-n>'
let g:multi_cursor_start_key='<F6>'

"### ctrl+s Save
inoremap <C-s> <esc>:wi<CR>
nnoremap <C-s> :w<CR>

"### ctrl+w quit
inoremap <C-w> <esc>:q<CR>
nnoremap <C-w> :q<CR>

"### autoindent
filetype plugin indent on

"### comment
filetype plugin on
autocmd FileType apache setlocal commentstring=#\ %s
"### autoclose bracket
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

"# autoclose tag
"# filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.js,*.xml"

"### Backup
set noswapfile
"### Backup
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"### Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=syntax   " fold based on syntax level
" set foldmethod=indent   " fold based on indent level
let php_folding=1
let javaScript_fold=1
let xml_syntax_folding=1
autocmd BufWinLeave *.* mkview " Save folds when quitting
autocmd BufWinEnter *.* silent loadview " Save folds when quitting

"### Space and Tabs
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2  " number of spaces in tab when editing
set expandtab       " tabs are spaces

"### CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules|bower_components)$'
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'

"### NERDTree
let g:NERDTreeDirArrows=0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"### Show Hidden file
let NERDTreeShowHidden=1
"### open in tab
let g:nerdtree_tabs_open_on_console_startup=1

"### nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹ ",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═ ",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ "Unknown"   : "? "
    \ }
let g:airline_powerline_fonts = 1
let g:airline_theme='behelit'

"### Indent Guide https://github.com/nathanaelkane/vim-indent-guides
let g:indent_guides_auto_colors = 1
" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
inoremap <C-g> <esc>:IndentGuidesToggle <CR>
nnoremap <C-g> :IndentGuidesToggle <CR>

" indent
nnoremap <C-right> :><CR>
nnoremap <C-left> :<<CR>
inoremap <C-right> <Esc>:><CR>i
inoremap <C-left> <Esc>:<<CR>i
vnoremap <C-right> :><CR>gv
vnoremap <C-left> :<<CR>gv

" move line
nnoremap <C-down> :m .+1<CR>
nnoremap <C-up> :m .-2<CR>
inoremap <C-down> <Esc>:m .+1<CR>
inoremap <C-up> <Esc>:m .-2<CR>
vnoremap <C-down> :m '>+1<CR> gv
vnoremap <C-up> :m '<-2<CR> gv

" highlight overlength 80 character
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" remove white space
nnoremap <C-m> :%s/\s\+$//g <CR>

set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r"

let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'"
