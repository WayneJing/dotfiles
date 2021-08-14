"""general config
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set termguicolors
map rc :source $MYVIMRC<CR>
" 全选
map <C-a> ggVG
" 打开我的vimrc
map <LEADER>rc :e ~/.config/nvim/init.vim<CR>
" 复制到系统剪切板
map +y "+y
" 从系统剪切板粘贴
map +p "+p
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶
set list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=FiraCode\ Nerd\ Font:h12
""" PlugInstall
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-janah'
Plug 'nanotech/jellybeans'
Plug 'sainnhe/sonokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tomasr/molokai'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'
"Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'liuchengxu/vista.vim'
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'kristijanhusak/defx-icons'
"Plug 'kristijanhusak/defx-git'
"Plug 'majutsushi/tagbar'
"Plug 'craigemery/vim-autotag'
Plug 'psf/black'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mtdl9/vim-log-highlighting'
"Plug 'kh3phr3n/python-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'liuchengxu/vim-clap', { 'do': function('clap#installer#build_all')}
"Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'terryma/vim-smooth-scroll'
"Plug 'easymotion/vim-easymotion'
Plug 'vn-ki/coc-clap'
call plug#end()

"""PlugConfig
"""lazygit
let g:lazygit_floating_window_scaling_factor = 0.8
map <silent> <F3> :LazyGit<CR>
imap <silent> <F3> <ESC>:LazyGit<CR>

" Vim Cpp Highlight
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_experimental_simple_template_highlight=1
let g:cpp_concepts_highlight=1

"""autotag
let g:autotagStartMethod='fork'
let g:autotagTagsFile="tags"
"""vim-clap
let g:clap_theme = 'material_design_dark'
"let g:clap_open_preview = 'on_move'
nmap <silent><F12> :Clap<CR>


"""tagbar
"let g:tagbar_width=40
"nnoremap <silent> <F4> :TagbarToggle<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh call tagbar#autoopen()
"let g:tagbar_autoshowtag = 1

"""rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
            \   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
            \   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'tex': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \       },
            \       'lisp': {
            \           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
            \       },
            \       'vim': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \   }
            \}


"""indentLine
let g:indent_guides_guide_size            = 1
let g:indent_guides_start_level           = 2

"""COC config
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I -A symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"""airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
"""colorscheme
colorscheme sonokai
set t_Co=256
set background=dark
let g:sonokai_style = 'atlantis'


"""vista vim config
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 45
map <silent> <F4> :Vista!!<CR>
imap <silent> <F4> <ESC>:Vista!!<CR>
noremap <C-f> :Clap tags <CR>
let g:vista_fzf_preview = ['right:50%']

"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh,*.xml call vista#sidebar#Open()



"""FZF Config
set rtp+=~/.fzf
" find file
noremap \ :Clap files .<CR>
" find history
noremap <C-h> :Clap history<CR>
" find lines containing keywords
noremap <C-l> :Clap blines<CR>
" find buffer
noremap <C-b> :Clap buffers<CR>

nnoremap <leader>F :Clap grep ++query=<cword>  .<CR>
vmap <leader>F :Clap grep  ++query=@visual  .<CR>
let g:clap_preview_delay=10
let g:clap_provider_grep_delay=10
let g:clap_open_preview='always'
let g:clap_preview_size=10
let g:clap_preview_direction="LR"
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
            \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
            \ call fzf#vim#buffers(
            \   '',
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%', '?'),
            \   <bang>0)

command! -bang -nargs=* LinesWithPreview
            \ call fzf#vim#grep(
            \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
            \   fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --sort'},  'up:70%', '?'),
            \   1)
command! -bang -nargs=* Rg
            \ call fzf#vim#ag(<q-args>,
            \                 <bang>0 ? fzf#vim#with_preview('up:60%')
            \                         : fzf#vim#with_preview('right:50%', '?'),
            \                 <bang>0)
let g:ackprg = 'rg --vimgrep --smart-case --glob !tags -e '
nnoremap <silent> <Leader>A :Ack! <C-R>=expand("<cword>")<CR><CR>
command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

"""defx config
"call defx#custom#option('_', {
            "\ 'winwidth': 30,
            "\ 'split': 'vertical',
            "\ 'direction': 'topleft',
            "\ 'show_ignored_files': 0,
            "\ 'columns': 'indent:git:icons:filename:type',
            "\ 'buffer_name': '',
            "\ 'toggle': 1,
            "\ 'resume': 1
            "\ })

"nmap <silent> <Leader>e :Defx <cr>
"autocmd FileType defx call s:defx_mappings()

"function! s:defx_mappings() abort
"nnoremap <silent><buffer><expr> l     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
"nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
"nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
"endfunction

"function! s:defx_toggle_tree() abort
"" Open current file, or toggle directory expand/collapse
"if defx#is_directory()
"return defx#do_action('open_or_close_tree')
"endif
"return defx#do_action('multi', ['drop'])
"endfunction
"autocmd BufWritePost * call defx#redraw()
"function! s:open_defx_if_directory()
"" This throws an error if the buffer name contains unusual characters like
"" [[buffergator]]. Desired behavior in those scenarios is to consider the
"" buffer not to be a directory.
"try
"let l:full_path = expand(expand('%:p'))
"catch
"return
"endtry
"if isdirectory(l:full_path)
"execute "Defx `expand('%:p')` | bd " . expand('%:r')
"endif
"" If the path is a directory, delete the (useless) buffer and open defx for
"" that directory instead.
"endfunction

"autocmd FileType defx call s:defx_my_settings()
"function! s:defx_my_settings() abort
"" Define mappings
"nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
"nnoremap <silent><buffer><expr> c defx#do_action('copy')
"nnoremap <silent><buffer><expr> m defx#do_action('move')
"nnoremap <silent><buffer><expr> p defx#do_action('paste')
"nnoremap <silent><buffer><expr> l defx#do_action('open')
"nnoremap <silent><buffer><expr> E defx#do_action('open', 'vsplit')
"nnoremap <silent><buffer><expr> P defx#do_action('open', 'pedit')
"nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
"nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
"nnoremap <silent><buffer><expr> N defx#do_action('new_file')
"nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
"nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
"nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
"nnoremap <silent><buffer><expr> d defx#do_action('remove')
"nnoremap <silent><buffer><expr> r defx#do_action('rename')
"nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
"nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
"nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
"nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
"nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
"nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
"nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
"nnoremap <silent><buffer><expr> q defx#do_action('quit')
"nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
"nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
"nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
"nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
"nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
"nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
"nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
"endfunction

"augroup defx_config
"autocmd!
"autocmd FileType defx call s:defx_my_settings()

"" It seems like BufReadPost should work for this, but for some reason, I can't
"" get it to fire. BufEnter seems to be more reliable.
"autocmd BufEnter * call s:open_defx_if_directory()
"augroup END


highlight  Normal guibg=NONE ctermbg=none
"""Hexokinase config
let g:Hexokinase_highlighters = ['backgroundfull']

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR> 

"easymotion
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
"
"ACK
"nnoremap <leader>F :Ack!<space>
"if executable('rg')
"    let g:ackprg = 'rg --vimgrep'
"endif
"""nerdtree config
"nnoremap <silent> <Leader>N :NERDTreeToggle<CR>
"nmap <leader>nf :NERDTreeFind
"let NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"
if filereadable(".vimrc")
    source .vimrc
endif
