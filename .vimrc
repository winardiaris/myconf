execute pathogen#infect()
call pathogen#helptags()

syntax enable           
syntax on
colorscheme luna-term   " colorscheme
set number              " show line number
set relativenumber
set numberwidth=4
set expandtab
set tabstop=2           " Tabs
set shiftwidth=2        " Tabs
set background=dark     " Background
set cursorline          " highlight current line
set showmatch           " highlight matching {}[]()
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set mouse=a "enable mouse
set t_Co=256
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 9

let g:multi_cursor_use_default_mapping=1 " Multiple Cursor
let g:multi_cursor_start_word_key='g<C-n>'
let g:multi_cursor_start_key='<F6>'

"### ctrl+s Save
inoremap <C-s> <esc>:w
nnoremap <C-s> :w

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
set foldmethod=indent   " fold based on indent level

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

"### Move Line use Bundle 'matze/vim-move'
let g:move_key_modifier = 'C'
"### NERDTree
let g:NERDTreeDirArrows=0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
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
