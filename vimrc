syntax on
set nu
set helplang=cn

set expandtab " tab 缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4 " 退格键回退长度

set linebreak " 不在单词中断行
set formatoptions+=mB " 断行模块对亚洲语系支持
set guioptions=

"set cursorline "高亮光标行


"""" Main Setttings
set nocompatible " vundle 必须关闭
filetype off
filetype plugin indent on     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" base 
" required! vundle manager
" 管理包
Bundle 'gmarik/vundle'

" 给vim增加url识别等功能
Bundle 'utl.vim'
Bundle 'pyflakes.vim'

"Bundle 'YouCompleteMe'

""""""""""""""""""""""""""""""""""""
"
"Install dependencies:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
"Install:
Bundle "garbas/vim-snipmate"
""""""""""""""""""""""""""""""""""""

Bundle "/vim-scripts/c.vim"
Bundle "/vim-scripts/a.vim"
Bundle "/vim-scripts/bash-support.vim"
Bundle "/vim-scripts/AutoComplPop"

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

Bundle 'tpope/vim-rails.git'

" highlight [] {} 
" 找不到  bundle 'matchparenpp.vim'

" 自动补全 
" 找不到 undle 'Shougo/neocomplcache.vim'

" 标点对齐
" not found bundle 'godlygeek/tabular.vim'

Bundle 'mattn/zencoding-vim'

" zh-doc
Bundle 'bolasblack/vimcdoc'
" mode-line
Bundle 'Lokaltog/vim-powerline'

" 快速跳转
Bundle 'kien/ctrlp.vim'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" taglist
Bundle 'taglist.vim'


" non github repos
Bundle 'git://git.wincent.com/command-t.git'


" Python
" 提供 python 的语法缩进，比默认的要好很多(vimer.cn修改)
Bundle 'indentpython.vim--nianyang'
" 为编写 Python 代码作的一些快捷键，比如选择一个代码块等
Bundle 'python.vim'
" 更好的 Python 语法高亮
Bundle 'python.vim--Vasiliev'
" 基于 PEP8 的 Python 代码风格检查插件
" *依赖 Python 的第三方包 PEP8 *
"Bundle 'jbking/vim-pep8'
"

" Language
" 提供 markdown 着色功能，顺便也提供了 snippet
Bundle 'hallison/vim-markdown'
" mustache 支持
"Bundle 'juvenn/mustache.vim'
" 提供 JSON 的语法高亮
Bundle 'JSON.vim'
" coffeeScript 支持
"Bundle 'kchmck/vim-coffee-script'
" Stylus 支持
"Bundle 'wavded/vim-stylus'
" Jade 高亮
"Bundle 'digitaltoad/vim-jade'
" nginx 语法高亮
Bundle 'nginx.vim'
" Jinja 语法
"Bundle 'Jinja'
" Mako 语法
"Bundle 'mako.vim'



""""""""ColorScheme"""""""""
Bundle 'flazz/vim-colorschemes'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'ColorSchemeMenuMaker'
Bundle 'desert-warm-256'
"colorscheme desert-warm-256
colorscheme desertEx

""""" ctrlp settings 
noremap <C-W><C-U> :CtrlPMRU<CR>
nnoremap <C-W>u :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"""""" AuthorInfo


au BufNewFile,BufRead nginx.conf set filetype=nginx " Nginx 配置文件支持
au BufNewFile,BufRead *.json set filetype=json      " JSON 后缀名支持


nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

"" YouCompleteMe 
"let g:ycm_key_list_previous_completion=['']

"" Ultisnips 
"let g:UltiSnipsExpandTrigger="" 
"let g:UltiSnipsListSnippets=""

