set modelines=0                          " 禁用模式行（安全措施）
syntax on                                " 语法高亮
filetype on                              " 开启文件类型检测

set encoding=utf-8                       " 编码设置
set number                               " 显示行号
set smartindent                          " 智能缩进
set autoindent                           " 自动对齐

set smarttab
set tabstop=4                            " tab缩进
set shiftwidth=4                         " 设定自动缩进为4个字符
set expandtab                            " 用space替代tab的输入
set splitright                           "
"设置左右分割窗口时，新窗口出现在右侧
set splitbelow                           "
"设置水平分割窗口时，新窗口出现在底部

set nobackup                             " 不需要备份
set noswapfile                           " 禁止生成临时文件
set autoread                             " 文件自动检测外部更改

set nocompatible                         " 去除vi一致性
set ambiwidth=double                     " 解决中文标点显示的问题
set nowrap                               " 不自动折行
set mouse=a                              " 使用鼠标
set mousehide                            " 输入时隐藏光标

set sm!                                  " 高亮显示匹配括号
set hlsearch                             " 高亮查找匹配
set cursorline                           " 高亮显示当前行

set showmatch                            " 显示匹配
set ruler                                " 显示标尺，在右下角显示光标位置
set novisualbell                         " 不要闪烁
set showcmd                              " 显示输入的命令


set completeopt=longest,menu             " 自动补全配置让Vim补全菜单行为跟IDE一致
set backspace=indent,eol,start           " 允许用退格键删除字符
let g:markdown_fenced_languages =['c', 'cpp', 'python', 'javascript']
set guifont=Hack_Nerd_Font_Mono:h16 " 设置字体和字体大小
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

nnoremap <C-b> :NERDTreeToggle<CR>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim' 
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons' 
Plug 'kristijanhusak/defx-icons'
Plug 'sbdchd/neoformat'
Plug 'beautify-web/js-beautify'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

call plug#end()

let g:asyncrun_open=10
let g:asyncrun_save=1

noremap <C-r> :!python %<CR>
noremap <Leader>bh :Startify<CR>

let g:neoformat_try_node_exe = 1

augroup fmt
    autocmd!
    autocmd BufWritePre * :Neoformat
augroup END

let g:markdown_syntax_conceal=0
let g:vim_json_conceal=0

set vb t_vb=
set background=dark
"colorscheme gruvbox
colorscheme onedark

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1        "显示buffer编号
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
" "let g:airline#extensions#battery#enabled = 1
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
let g:airline_theme='onedark'

let g:NERDCreateDefaultMappings = 1

let g:NERDSpaceDelims = 1

let g:NERDCompactSexyComs = 1

let g:NERDDefaultAlign = 'left'

let g:NERDAltDelims_java = 1

let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

let g:NERDCommentEmptyLines = 1

let g:NERDTrimTrailingWhitespace = 1

let g:NERDToggleCheckAllLines = 1

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-e>'

let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-pyright']

let g:Lf_HideHelp = 1

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_ShortcutB = "<leader>fb"

let g:Lf_WildIgnore = {
    \ 'dir': ['.svn','.git','.hg','venv','.vscode','.SpaceVim.d'],
    \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
    \}

autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
