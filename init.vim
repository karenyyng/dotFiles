" Setup for general Linux distributions 
" Author: Karen Ng <karen.yyng@gmail.com>
"
"""-----Vundle config-------------------------------------------
set re=1
set nocompatible              " be iMproved
filetype off                  " required!
filetype plugin indent on
filetype indent on 

" Use Vim Plug to manage plugins
call plug#begin('~/.config/nvim/plug')

"---------- My bundles (plugins) here:--------------------------
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}  " improves startup time
" Plug 'L9'   				    " for vim programming

"--------essential tools for vim navigation---------------------
" Plug 'scrooloose/nerdtree.git'  	" file browser
Plug 'https://github.com/kien/ctrlp.vim' " file search
Plug 'Lokaltog/vim-easymotion'        " easier vim search highlight
Plug 'https://github.com/vim-scripts/taglist.vim.git'

" -------shell multiplexr -------------------------------------
Plug 'christoomey/vim-tmux-navigator'
"Plug 'jpalardy/vim-slime'


" ---------- vim tweaks ----------------------------------------
"  status line 
Plug 'bling/vim-airline'

"------- correct for spellings and grammar stuf ----------------
" Plug 'LanguageTool'

"-------language non-specific assistance plugin----------------
Plug 'SirVer/ultisnips'  			       " quickly add code template
Plug 'honza/vim-snippets'			       " where code snippets are
" Plug 'AutoComplPop'                                  " autocomplete menu"
Plug 'https://github.com/Valloric/YouCompleteMe.git' " autocomplete used words
Plug 'https://github.com/scrooloose/syntastic.git'   " syntax check
Plug 'https://github.com/jiangmiao/auto-pairs.git'     " autocomplete braces
Plug 'jpalardy/vim-slime'                            " send code to IPython


"-------language specific plugins ------------------------------
"Plug 'maksimr/vim-jsbeautify'
Plug 'klen/python-mode'

" Plug 'c.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'jalvesaq/R-Vim-runtime'
" Plug 'Vim-R-plugin'
" Plug 'JuliaLang/julia-vim'
Plug 'ekalinin/Dockerfile.vim'

" Plug 'http://git.code.sf.net/p/vim-latex/vim-latex'

"Plug 'pangloss/vim-javascript'
"Plug 'https://github.com/Shutnik/jshint2.vim.git'
"Plug 'https://github.com/sidorares/node-vim-debugger.git'

"Plug 'xmledit'
"Plug 'tpope/vim-rails.git'
"Plug 'plasticboy/vim-markdown'
"Plug 'suan/vim-instant-markdown'
" Plug 

Plug 'derekwyatt/vim-scala'
Plug 'spiroid/vim-ultisnip-scala'

call plug#end()

" Git repos on your local machine (i.e. when working on your own plugin)
filetype plugin indent on     " required!

"""-----other general vim config--------------------------------
syntax enable
set ruler
set laststatus=2 showcmd showmode 
set incsearch ignorecase smartcase hlsearch 
set nonumber
set nocompatible 
set clipboard=unnamedplus
set wrap
set textwidth=79
set wrapmargin=0
set linebreak
set formatoptions+=t
set backspace=indent,eol,start

if has("mouse")
	set mouse=a
endif
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

set shell=bash\ --login

" have ,cd change to the pwd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" ---------vim folding-----------------------------------------
autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview 
"
"
let g:SimpylFold_docstring_preview = 1
"set foldmethod=syntax
"set foldlevelstart=1

let g:python3_host_prog='/opt/conda/bin/python3'
"let g:loaded_python_provider = 1 " disable python 2 support 
let g:pymode_folding = 1      " Python
let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

""" MacVim setting -------------------------------------------
if has("gui_running")
  colorscheme SolarizedDark
endif

""" ----automatic commands -----------------------------------
augroup vimrc_autocmds
    autocmd!
    " change tab directory automatically
    autocmd BufEnter * silent! lcd %:p:h
    " highlight characters past column 120
    autocmd FileType html set tabstop=2 
    autocmd FileType html set shiftwidth=2
    autocmd FileType yaml set tabstop=2 
    autocmd FileType yaml set shiftwidth=2
    autocmd FileType yaml set expandtab 
    autocmd FileType javascript set tabstop=4 
    autocmd FileType javascript set shiftwidth=4
    autocmd FileType javascript set smartindent
    " autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    " autocmd FileType python set textwidth=79
    " autocmd FileType python set wrapmargin=0
    " autocmd FileType python set formatoptions+=t
    " autocmd FileType python match Excess /\%80v.*/
    " autocmd FileType python set wrap
    " autocmd FileType python set completeopt-=preview 
    autocmd FileType python set nonumber
    autocmd FileType pyrex set tabstop=4 
    autocmd FileType pyrex set shiftwidth=4
    autocmd FileType pyrex set smartindent
    autocmd FileType pyrex highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType pyrex set textwidth=79
    autocmd FileType pyrex set wrapmargin=0
    autocmd FileType pyrex set formatoptions+=t
    autocmd FileType pyrex match Excess /\%80v.*/
    autocmd FileType pyrex set wrap
    autocmd FileType pyrex set expandtab 
    autocmd FileType pyrex set completeopt-=preview 
    autocmd FileType pyrex set nonumber
    autocmd FileType make set noexpandtab
    autocmd FileType css set shiftwidth=2
    autocmd FileType css set tabstop=2
    autocmd FileType r set shiftwidth=2
    autocmd FileType r set tabstop=2
    autocmd FileType r set expandtab 
    autocmd FileType r set tags+=RTAGS
    autocmd FileType r set tags+=TAGS
    autocmd FileType r set textwidth=79
    autocmd FileType r set wrapmargin=0
    autocmd FileType cpp set shiftwidth=4
    autocmd FileType cpp set tabstop=4
    autocmd FileType cpp set expandtab 
    autocmd FileType cpp set textwidth=79
    autocmd FileType cpp set wrapmargin=0
    autocmd FileType cpp set foldmethod=syntax 
    autocmd FileType matlab set tabstop=4 
    autocmd FileType matlab set shiftwidth=4
    autocmd FileType matlab set expandtab  
    autocmd FileType c set tabstop=4
    autocmd FileType c set expandtab 
    autocmd FileType sh set tabstop=2
    autocmd FileType sh set expandtab 
    autocmd FileType sh set shiftwidth=2 
    autocmd FileType tex set tabstop=2
    autocmd FileType tex setlocal spell spelllang=en_us
    autocmd Filetype tex set spell
    "autocmd FileType tex set expandtab 
    autocmd FileType tex set tabstop=2 
    autocmd FileType tex set softtabstop=2 
    autocmd FileType tex set shiftwidth=2
    autocmd FileType markdown set tabstop=2 
    autocmd FileType markdown set shiftwidth=2
    "autocmd FileType markdown set expandtab 
    autocmd FileType ruby set tabstop=2 
    autocmd FileType ruby set shiftwidth=2
    autocmd FileType ruby set expandtab 
    autocmd FileType eruby set tabstop=2 
    autocmd FileType eruby set shiftwidth=2
    autocmd FileType eruby set expandtab 
    autocmd FileType scala set tabstop=2
    autocmd FileType scala set shiftwidth=2
    autocmd FileType scala set textwidth=79
    autocmd FileType scala set wrapmargin=0
    autocmd FileType java set tabstop=4
    autocmd FileType java set shiftwidth=4
    autocmd FileType java set textwidth=79
    autocmd FileType java set wrapmargin=0
augroup END


""" ------ascii specific setting-----------------------------
syntax match nonascii "[^\x00-\x7F]" " highlighting ascii
highlight nonascii guibg=Red ctermbg=2

"" spell check configuration----------------------------------
" if v:version >= 700
" " " Enable spell check for text files
"   autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
" endif

""" grammar check -------------------------------------------
"let g:languagetool_jar="/Users/karenyng/Software/LanguageTool-2.7/languagetool-commandline.jar"

""" ------taglist config -------------------------------------
set tags=./tags;/
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_r_settings ='r;f:Functions;g:GlobalVariables;v:FunctionVariables'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1

" Open definition in upper split
" " C-w C-]
" Open definition in a new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" Open the definition in a vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"map function 8 to toggle taglist
nnoremap <silent> <F8> :TlistToggle<CR>

""" Nerd tree configuration ------------------------------------- 
" silent! nmap <F3> :NERDTreeToggle<CR>

""" YouCompleteMe config ----------------------------------------
let g:ycm_collect_identifiers_from_tags_files = 1 
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifier_from_comments_and_strings=1
let g:ycm_key_list_previous_completion=['<C-TAB>','<Up>']
let g:ycm_key_list_selection_completion=['<C-TAB>', '<Down>']
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_filetype_specific_completion_to_disable={'python' : 1}
let g:ycm_filetype_whitelist={'python':0, 'scala':0, 'java':0, 'cpp':1, 'html':0}
let g:ycm_filetype_specific_completion_to_disable={'scala': 1, 'html':1}
let g:ycm_register_as_syntastic_checker = 0 
let g:ycm_global_ycm_extra_conf="~/.vim/.bundle/YouCompleteMe/.ycm_extra_config.py"

""" Ultisnips setting
let g:UltiSnipSnippetsDir="~/.vim/bundle/vim-snippets/UltiSnips"
let g:UltiSnipSnippetsDirectories =["~/.vim/bundle/vim-snippets/snippets", "~/.vim/bundle/vim-snippets/UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipEditSplit="normal"

""" Tagbar settings---------------------------------------------
" nmap <F4> :TagbarToggle<CR>
" let g:tagbar_left=1
" let g:tagbar_type_tex = {
"     \ 'ctagstype' : 'latex',
"     \ 'kinds'     : [
"         \ 's:sections',
"         \ 'g:graphics:0:0',
"         \ 'l:labels',
"         \ 'r:refs:1:0',
"         \ 'p:pagerefs:1:0'
"     \ ],
"     \ 'sort'    : 1,
" \ }
" 
" "" for R 
" let g:tagbar_type_r = {
"     \ 'ctagstype' : 'r',
"     \ 'kinds'     : [
"         \ 'f:Functions',
"         \ 'g:GlobalVariables',
"         \ 'v:FunctionVariables',
"     \ ]
" \ }


""" Syntastic settings-------------------------------------------- 
let g:syntastic_aggregate_errors = 1
"set statusline+=%warningmsg# 
"set statusline+=%*
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }
"let g:syntastic_disabled_filetypes=['python', '*.py'] DEPRECIATED
"
let g:syntastic_cpp_checkers = ["gcc"]
let g:syntastic_enable_cpp_checkers = 1
let g:syntastic_cpp_check_header=1
let c_no_curly_error=1

let g:syntastic_r_checkers = "lint"
let g:syntastic_r_lint_styles = 'list(spacing.indentation.notabs, spacing.indentation.evenindent)'


""" CtrlP settings--------------------------------------------
noremap <C-t> :CtrlPBufTagAll <CR> 
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
set wildignore+=*.o,*.obj,*.pyc,*.ipynb,*.sw*,*.zip,*.h5,*.hdf5,*.tar.gz,*/\.git/*,*/tmp/*,*/IlEnv/*,*/SGP/*,*/MagicFarm/*,*/IEnv/*
let g:ctrlp_clear_cache_on_exit = 0

" Tmux settings--------------------------------------------
if &term =~ '^screen'
	" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

      
""" allowing tmux to navigate vim splits
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-Left> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-Down> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-Up> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-Right> <C-w>l :TmuxNavigateRight<cr>

"""---- vim-airline settings ------------------------------
let g:airline#extensions#whitespace#show_message = 0

""" Julia -------------------------------------------
let g:latex_to_unicode_eager = 1

""" Latex -------------------------------------------------
" Have LaTeX math symbols display as unicode
set cole=2
hi Conceal cterm=NONE ctermbg=NONE guibg=Blue guifg=Yellow
let g:tex_conceal= 'adgm'

"""-----python config-------------------------------------------
" let g:python_host_prog='/opt/local/bin/python'
let g:pymode_python = 'python3'

""" pymode config
let g:pymode_rope=0
let g:pymode_rope_lookup_project=0 
let g:pymode_motion = 0  
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_completion=0 "0
let g:pymode_rope_completion_bind='<C-Space>'
let g:pymode_rope_autoimport=1
let g:pymode_doc=1
let g:pymode_indent=1
let g:pymode_rope_show_doc_bind = 'K'
let g:pymode_rope_goto_def_newwin = "new" 
"let g:pymode_doc_key='K'
let g:pymode_syntax_all = 1
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_lint_onfly=0
let g:pymode_lint_checker=["pyflakes", "pep8"]
" let g:pymode_lint_sort=['E', 'C', 'I', 'W']
let g:pymode_syntax_highlight_exceptions = 1 
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
" let g:pymode_lint_ignore="C0110"

"""" cpp highlighting -------------------------------------
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

"""-----vim-r config-------------------------------------------
" let vimrplugin_r_path = "/opt/local/bin/R"
" let vimrplugin_term = "/Applications/iTerm.app/Contents/MacOS/iTerm2"
" let vimrplugin_applescript = 0
" let vimrplugin_assign = 0
" let g:vimrplugin_insert_mode_cmds = 0 

""" ---jsbeautify-----------
"map <c-f> :call JsBeautify()<cr>
"" or
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"" for json
"autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
"" for jsx
"autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
"" for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

""" -----scala-config--------------------------------------------------
au BufRead,BufNewFile *.scala set filetype=scala
au BufNewFile,BufRead *.scala set tabstop=2

let g:EclimCompletionMethod = 'completefunc'

""" ------- slime config -----------------------------------------------
" let g:slime_target = "tmux"
" let g:slime_paste_file = "$HOME/.slime_paste"

