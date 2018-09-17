set nocompatible              " be iMproved, required
filetype off                  " required

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'rking/ag.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'powerline/fonts'
Plugin 'octol/vim-cpp-enhanced-highlight' "对c++语法高亮增强
Plugin 'kshenoy/vim-signature' "书签可视化的插件
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines' "书签行高亮
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter' "多行注释，leader键+cc生成, leader+cu删除注释
Plugin 'scrooloose/nerdtree' "文件浏览
Plugin 'Valloric/YouCompleteMe' "自动补全
Plugin 'kien/ctrlp.vim' "搜索历史打开文件，在命令行模式下按ctrl+p触发
Plugin 'vim-scripts/grep.vim' "在命令行模式使用grep命令，:Grep
Plugin 'Lokaltog/vim-easymotion' "快速跳转，按两下leader键和f组合
Plugin 'vim-scripts/ShowTrailingWhitespace.git' "高亮显示行尾的多余空白字符
Plugin 'vim-scripts/indentpython.vim.git'
Plugin 'vim-scripts/Solarized.git' "主题方案
Plugin 'nathanaelkane/vim-indent-guides.git' "缩进对齐显示
Plugin 'jiangmiao/auto-pairs' "关于括号
"Plugin 'vim-scripts/indexer.tar.gz' "自动生成标签
"Plugin 'vim-scripts/DfrankUtil' "indexer 依赖
"Plugin 'vim-scripts/vimprj' "indexer 依赖
Plugin 'davidhalter/jedi-vim' "python 补全，不依赖于tags,但比较慢，可以使用indexer替换，但不能跳转项目外
Plugin 'vim-scripts/Markdown'
Plugin 'tpope/vim-surround'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'dbeniamine/cheat.sh-vim'
Plugin 'flazz/vim-colorschemes'





" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required


" *************** 设置全局快捷键 *****************





" ***************** 全局设置 ************** "






"set mouse=a
set number
set ruler
set history=1000
set showcmd
" 状态行显示的内容
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8


" 去掉有关vi一致性模式，避免以前版本的一些bug和局限，解决backspace不能使用的问题

set backspace=indent,eol,start
set backspace=2

" 启用自动对齐功能，把上一行的对齐格式应用到下一行

set autoindent

" 依据上面的格式，智能的选择对齐方式，对于类似C语言编写很有用处
set smartindent

" vim禁用自动备份
set nobackup
set nowritebackup
set noswapfile
" 自动保存
set autowrite
" 自动缩进
filetype indent on
" 开启语法高亮功能
syntax enable
syntax on
" 允许用指定语法高亮配色方案替换默认方案
set nocompatible "关闭兼容模式
set incsearch "开启实时搜索功能
" 高亮搜索的字符串
set hlsearch
set ignorecase "搜索忽略大小写
set wildmenu "vim命令自动补全
set autoread "文件自动更新
set laststatus=2 "总是显示状态栏
set cursorline "高亮显示当前行
set hlsearch "高亮显示搜索结果
set novisualbell
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 统一缩进为4，方便在开启了et后使用退格(backspace)键，每次退格将删除X个空格
set softtabstop=4
" 设定自动缩进为4个字符，程序中自动缩进所使用的空白长度
set shiftwidth=4
" 将制表符扩展为空格
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" 设置帮助文件为中文(需要安装vimcdoc文档)
set helplang=cn
" 显示匹配的括号
set showmatch
" 文件缩进及tab个数
au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
" 检测文件的类型
filetype on
filetype plugin on
filetype indent on
set noeb
" 共享剪贴板
set clipboard+=unnamed
" 顶部底部保持3行距离
set scrolloff=3


"###########     分割线     ############

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>f :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


" signature设置
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }
"============= 状态栏美化=========
 let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'



 let g:user_emmet_leader_key='<Tab>'
" 设置过滤不进行查找的后缀名
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"==========   ycm配置==============
let g:ycm_server_python3_interpreter="/Library/Frameworks/Python.framework/Versions/3.7/bin/python3.7"
let g:ycm_python_binary_path = '/usr/local/bin/python3.7'


"========== colorschemes 配置   ==============
set t_Co=256
colorscheme cobalt2



"========== jedi 配置   ==============
let g:jedi#completions_command="<D-n>"





"========== autopep8 配置   ==============
 autocmd FileType python map <buffer> <D-8>  :call Autopep8()<CR>
  let g:autopep8_on_save = 1
  let g:autopep8_disable_show_diff=1
