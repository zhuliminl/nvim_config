
call plug#begin('~/.vim/plugged')
" Plug 'nikvdp/ejs-syntax'                    "ejs 模版语法高亮"
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'yegappan/greplace'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'nathanaelkane/vim-indent-guides'      "竖条缩进"

Plug 'tpope/vim-surround'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'mattn/emmet-vim'
Plug 'toyamarinyon/vim-swift'

Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim'          "已经有故障，开启则是关闭了烦人的补全"
Plug 'hail2u/vim-css3-syntax'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace' "行尾空格处理"

" Plug 'tomasr/molokai'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'terryma/vim-expand-region'       "区域选择"
Plug 'othree/html5.vim'


" Plug 'suan/vim-instant-markdown'
Plug 'kien/rainbow_parentheses.vim'    "高亮括号"

Plug 'Lokaltog/vim-easymotion'         "终极跳转"
Plug 'Chiel92/vim-autoformat'          "代码美化"
Plug 'szw/vim-maximizer'               "窗口最大化切换"

Plug 'junegunn/vim-easy-align'         "代码美化对齐"
Plug 'godlygeek/tabular'               "代码美化对齐"
Plug 'ervandew/supertab'
" Plug 'SirVer/ultisnips'                 "snips engine"

Plug 'pangloss/vim-javascript'             "javascript highlight"
" Plug 'mxw/vim-jsx'                         "和 youcompleteme 有冲突
Plug 'chemzqm/vim-jsx-improve'              "替换上面的 vim-jsx"
" Plug 'posva/vim-vue'                        "vue 支持"
" Plug 'aklt/plantuml-syntax'                 "uml 语法支持"
" Plug 'tex/vimpreviewpandoc'
Plug 'prabirshrestha/async.vim'

" Plug 'gcmt/taboo.vim'                  "修改 tabname"

" Plug 'Valloric/YouCompleteMe'
Plug 'dart-lang/dart-vim-plugin'
Plug 'leafgarland/typescript-vim'

" Plug 'terryma/vim-multiple-cursors'         "多光标"
" Plug 'vim-syntastic/syntastic'              "语法检查。有待研究
" Plug 'w0rp/ale'                             "新一代语法检查
" Plug 'scrooloose/vim-slumlord'              "uml 不解释"
" Plug 'artur-shaik/vim-javacomplete2'       "java 支持"
" Plug 'plasticboy/vim-markdown'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'tpope/vim-markdown'
" Plug 'ashisha/image.vim'      "竖条缩进, 有 python 支持问题"
" Plug 'ybian/smartim'                 "输入法自动切换,不太好用还阻塞别人的插件"
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }



call plug#end()




"加速"
" set re=1
set lazyredraw
set ttyfast
"状态栏增强"
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep       = '▶'
let g:airline_left_alt_sep   = '❯'
let g:airline_right_sep      = '◀'
let g:airline_right_alt_sep  = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
"禁止 markdown 自动折叠
let g:vim_markdown_folding_disabled = 1
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript']
let g:instant_markdown_autostart = 0
":InstantMarkdownPreview

let dart_html_in_string=v:true
let dart_style_guide = 2

" 是否打开tabline
" let g:airline#extensions#tabline#enabled = 1

let g:airline_theme="raven"

syntax enable
set nocompatible     " be iMproved, requied "
set clipboard=unnamed
set backspace=indent,eol,start
set number
let mapleader = ","                     " 用逗号替换 "


set tabstop=8
set expandtab                           " 用空格代替 tab "
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu
set backspace=2
set ai                                  "自动缩进"
set nosm                                "取消匹配高亮"
" set relativenumber


" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
set background=dark
colorscheme palenight
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236
nmap <Leader>ig :IndentGuidesEnable<cr> "开启缩进指示"

" set ts=4 sw=4 et      tab 转空格设置
set ts=2 sw=2 et
set scrolloff=3                         "光标距离底部始终7行"
set linespace=5
set t_Co=256

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"set guifont=Roboto\ Mono\ Light\ for\ Powerline:h13
let g:Powerline_symbols = 'fancy<cr>'
set encoding=utf-8

set fillchars+=stl:\ ,stlnc:\ 
" set term=xterm-256color
set termencoding=utf-8
set cursorline                          "高亮行"
" set cursorcolumn
" 高亮列，这个效果很难说了。看着还是不够清爽 "

hi Normal ctermbg=235                  " 定制自己想要的背景色 "
highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=NONE guifg=NONE         "定制光标列的颜色"

set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

hi LineNr ctermfg=237 ctermbg=bg
set foldcolumn=0
hi foldcolumn guibg=bg
hi vertsplit guifg=bg guibg=bg ctermbg=bg ctermfg=bg   " 去分割条的丑陋背景色 "
hi Search cterm=NONE ctermfg=yellow ctermbg=237


" ---------------Search--------------------
" set nohlsearch
" 搜索高亮
set hlsearch
set incsearch

" Greplace.vim   暂时还体会不到它的强大
set grepprg=ag                  "使用 Ag "
let g:grep_cmd_opts = '--line-numbers --noheading'


"---------------Split Management----------
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" nmap <leader>h <C-W><C-H>
" nmap <leader>k <C-W><C-L>
imap <C-H> <esc><C-W><C-H>

" 废掉单词移动，个人原因不常用。所以替换成半页滚动
" nmap w <C-U>
" nmap e <C-D>

" 发现上面的设置用半页还是有点跨度大了。get 不到内容。不如换做固定的行数
nmap w 8k
nmap W 5k
nmap e 8j
nmap E 5j


" 尝试用 a 替换 ` 这个不太好触控的键，用来快速在文件之间跳转
nmap a `

"-----------切换tab--------------------
" map <leader>1 gt1
" map <leader>2 gt2
" map <leader>3 gt3
" map <leader>4 gt4
" map <leader>5 gt5
" map <leader>6 gt6
" map <leader>7 gt7
" map <leader>8 :b 8<CR>
" map <leader>9 :b 9<CR>
" " 修改 tabname
" map <leader>0 :TabooRename<Space>
" map <leader>mp :InstantMarkdownPreview<cr>
map <leader>mp :MarkdownPreview<cr>



"-------Mappings 键盘映射----------
"make it easy to edit the Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>


"-----------自定义命令------------
"创建标签和关闭当前标签"
nmap tn :tabnew .<cr>
nmap ctb :tabclose<cr>
nmap cab :bufdo bd!<cr>                     " 关闭所有的缓冲区 "


"------------高亮搜索-----------------
"nmap <Leader><space> :nohlsearch<cr>"


"make NERDTree easier to toggle
nmap <Leader>n :NERDTreeToggle<cr>          " 文件树开关 "
nmap <Leader>r :CtrlPBufTag<cr>


"标签树
nmap <Leader>t :TagbarToggle<cr>

"make ctags easier to go
" nmap <Leader>f :tag<space>


"-------Plugins--------"

"/
"/ limelight
"/

" Color name (:help cterm-colors) or ANSI code
" let g:limelight_conceal_ctermfg = 'gray'
" let g:limelight_conceal_ctermfg = 'gray'
" let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_ctermfg = 245

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
" let g:limelight_priority = -1<Paste>
nmap <Leader>l <Plug>(Limelight)
nmap <Leader>h :Limelight<cr>
nmap <Leader>; :Limelight!<cr>



"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0
" let NERDTreeIgnore=['node_modules','__pycache__','env','tags', 'npm-debug.log']
" let NERDTreeIgnore=['node_modules','__pycache__','tags', 'npm-debug.log']
let NERDTreeIgnore=['__pycache__','tags', 'npm-debug.log']
let g:NERDTreeMapJumpNextSibling = ''


"/
"/ Emmet
"/
let g:user_emmet_settings = {
\ 'indentation' : '    ',
\ 'perl' : {
\     'aliases' : {
\         'req' : 'require '
\     },
\     'snippets' : {
\         'use' : "use strict\nuse warnings\n\n",
\         'warn' : "warn \"|\";",
\    }
\ }
\}

let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1


"---------------------------------------------- Notes and Tips

" 相对行数
nmap <Leader>rn :set relativenumber<cr>

"神奇的自定义运动，解决各种机械输入问题
"输入大括号自动分隔行，然后缩进
imap [[ {<cr><esc>O

"自动查找当前单词,在普通模式下，空格键的确是没啥用的样子，将 n 替换 N "
"这样会更自如"
"nmap <space> *
nmap f *
nmap n N

"切换tab快捷键
nmap I gT
" nmap J gT
nmap K gt
nmap <leader>q :tabc<cr>

"快速调用搜索"
nmap go <esc>:Ag<space>
nmap gs <esc>:Gsearch<space>
" nmap <leader>a <esc>:Ag<space>


"快速保存"
nmap b :w<cr>

"撑开括号等
imap kk <Space><Space><esc>i

" 快速输入断点 console.log() 的快捷方式
" imap conso console.log()<esc>i

"补全尾部分号
" nmap ;; A;<esc>
" imap ;; <esc>;;

"jsx 单行注释
nmap <leader>r ddO{/*<cr>*/}<esc>kp
"
"快速运行
" let g:quickrun_config = {
" \   "_" : {
" \       "outputter" : "message",
" \   },
" \}

" let g:quickrun_no_default_key_mappings = 1
" nmap <Leader>r <Plug>(quickrun)

"快速函数注释
imap <leader>co /**

" 快速添加 ejs 模版符号
imap <leader>ejs <%=%><esc>hi


"分开对称，并缩进
imap @k <cr><esc>O<Tab>

"废掉 $ 0 的行内首位移动，改用大写的 H 和 L 更具直
noremap H ^
noremap L $


"---------插件映射---------

let g:user_emmet_leader_key='<C-E>'             "emmet 快捷键修改"


let g:html5_event_handler_attributes_complete = 1
let g:html5_rdfa_attributes_complete = 1

" 自动关闭补全提示窗口
let g:ycm_autoclose_preview_window_after_completion = 1

nmap <Leader>md :MarkdownPreview<cr>            " 开启 markdown 预览 "
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"   "markdown  插件寻找浏览器路径"


nmap <Leader><space> :FixWhitespace<cr>


let g:NERDSpaceDelims=1                         " 注释前加一个空格"


vmap v (expand_region_expand)
vmap V (expand_region_shrink)                   " 区域选择 "


" nnoremap <Leader>h :GundoToggle<cr>


"高级搜索定位----------------------------------------------超神级别搜索插件"
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-s)
" 我靠，下面几个快捷键才是最屌的啊
map <Leader><Leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>. <Plug>(easymotion-repeat)

"单词快速替换
map <C-o> ciw<C-r>0<ESC>
"左右快速移动
nmap K 15l



"--------- JS 语法高亮---------------"
let g:javascript_plugin_jsdoc = 1               " JavaScript "
let javascript_enable_domhtmlcss = 1


"----------括号高亮--------------"
let g:rbpt_colorpairs = [
    \ ['brown', 'RoyalBlue3'],
    \ ['Darkblue', 'SeaGreen3'],
    \ ['darkgray', 'DarkOrchid3'],
    \ ['darkgreen', 'firebrick3'],
    \ ['darkcyan', 'RoyalBlue3'],
    \ ['darkred', 'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown', 'firebrick3'],
    \ ['gray', 'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue', 'firebrick3'],
    \ ['darkgreen', 'RoyalBlue3'],
    \ ['darkcyan', 'SeaGreen3'],
    \ ['darkred', 'DarkOrchid3'],
    \ ['red', 'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"宏"





"-------- 自动补全问题调试 --------------"
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'


"NERDTree 自动退出和自动开启"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"自动开始缩进提示条
let g:indent_guides_enable_on_vim_startup = 1

"自动开启css补全"
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif



"--------变量对齐------------"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)




"基础覆盖"
" tab 栏目颜色
hi TabLineFill term=bold ctermfg=234 ctermbg=234
" hi TabLineSel ctermfg=green ctermbg=234
hi TabLine ctermfg=Blue ctermbg=234
hi TabLineSel ctermfg=40 ctermbg=234

" 窗口最大化最小化“
nmap <leader>f :MaximizerToggle<cr>


" 文件框架
" autocmd BufNewFile *.js r /Users/saul/.vim/skeleton/react.js

" 视觉模式显示风格
highlight Visual cterm=bold ctermbg=238 ctermfg=NONE

" 代码库
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/myownsnips']            "我的自己的代码片段，及其重要！！！"




"多光标
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"语法检查
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
nmap <silent> <leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader>j <Plug>(ale_next_wrap)
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}



" set tabline=%!MyTabLine()  " custom tab pages line
" function MyTabLine()
        " let s = '' " complete tabline goes here
        " " loop through each tab page
        " for t in range(tabpagenr('$'))
                " " set highlight
                " if t + 1 == tabpagenr()
                        " let s .= '%#TabLineSel#'
                " else
                        " let s .= '%#TabLine#'
                " endif
                " " set the tab page number (for mouse clicks)
                " let s .= '%' . (t + 1) . 'T'
                " let s .= ' '
                " " set page number string
                " let s .= t + 1 . ' '
                " " get buffer names and statuses
                " let n = ''      "temp string for buffer names while we loop and check buftype
                " let m = 0       " &modified counter
                " let bc = len(tabpagebuflist(t + 1))     "counter to avoid last ' '
                " " loop through each buffer in a tab
                " for b in tabpagebuflist(t + 1)
                        " " buffer types: quickfix gets a [Q], help gets [H]{base fname}
                        " " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
                        " if getbufvar( b, "&buftype" ) == 'help'
                                " let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
                        " elseif getbufvar( b, "&buftype" ) == 'quickfix'
                                " let n .= '[Q]'
                        " else
                                " let n .= pathshorten(bufname(b))
                        " endif
                        " " check and ++ tab's &modified count
                        " if getbufvar( b, "&modified" )
                                " let m += 1
                        " endif
                        " " no final ' ' added...formatting looks better done later
                        " if bc > 1
                                " let n .= ' '
                        " endif
                        " let bc -= 1
                " endfor
                " " add modified label [n+] where n pages in tab are modified
                " if m > 0
                        " let s .= '[' . m . '+]'
                " endif
                " " select the highlighting for the buffer names
                " " my default highlighting only underlines the active tab
                " " buffer names.
                " if t + 1 == tabpagenr()
                        " let s .= '%#TabLineSel#'
                " else
                        " let s .= '%#TabLine#'
                " endif
                " " add buffer names
                " if n == ''
                        " let s.= '[New]'
                " else
                        " let s .= n
                " endif
                " " switch to no underlining and add final space to buffer list
                " let s .= ' '
        " endfor
        " " after the last tab fill with TabLineFill and reset tab page nr
        " let s .= '%#TabLineFill#%T'
        " " right-align the label to close the current tab page
        " if tabpagenr('$') > 1
                " let s .= '%=%#TabLineFill#%999Xclose'
        " endif
        " return s
      " endfunction






"--------Auto-Commands------------"

"Automatically source the Vimrc file on save"
augroup autosourcing
    autocmd!
    autocmd BufWritePost init.vim source %
augroup END
