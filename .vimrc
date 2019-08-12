set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-latex/vim-latex'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Konfekt/FastFold'

call vundle#end()            " required

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoread

set wildmenu
set wildmode=longest:list,full

filetype plugin indent on    " required
let g:tex_flavor = 'latex'


""==================== LaTeX-suite ====================
"
"" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
""filetype plugin on
"
"" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
"" can be called correctly.
"set shellslash
"
"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*
"
"" OPTIONAL: This enables automatic indentation as you type.
""filetype indent on
"
"" Change shortcut key for latex-suite
"let mapleader = "¨"
"
"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
"
"imap <D-i> <Plug>Tex_InsertItemOnThisLine
"let g:Tex_Env_figure = "\\begin{figure}[<+htpb+>]\<CR>\\centering\<CR>\\includegraphics[<+options+>]{<+filename+>}\<CR>\\caption{<+caption text+>}\<CR>\\label{fig:<+label+>}\<CR>\\end{figure}<++>"
"
"" Change default target to pdf, if not dvi is used
"let g:Tex_DefaultTargetFormat = 'pdf'
"
"" display rules
"let g:Tex_ViewRule_ps = 'Skim'
"let g:Tex_ViewRule_pdf = 'Skim'
"let g:Tex_ViewRule_dvi = 'Skim'
"
"" A comma seperated list of formats which need multiple compilations to be
"" correctly compiled.
"let g:Tex_MultipleCompileFormats = 'dvi,pdf'
"
"" stop inserting "<++>"s
""let g:Imap_UsePlaceHolders = 0
"
"" Enable Alt-key macros
"let g:Tex_AdvancedMath = 1
"

"==================== vimtex ====================

" Vimtex options
let g:vimtex_compiler_progname = "/Applications/MacVim.app/Contents/bin/mvim"
let g:vimtex_compiler_method = "latexmk"
"let g:vimtex_compiler_latexmk = {
"    \ 'backend' : DEPENDS ON SYSTEM (SEE BELOW),
"    \ 'background' : 1,
"    \ 'build_dir' : '',
"    \ 'callback' : 1,
"    \ 'continuous' : 1,
"    \ 'executable' : 'latexmk',
"    \ 'options' : [
"    \   '-pdf',
"    \   '-verbose',
"    \   '-file-line-error',
"    \   '-synctex=1',
"    \   '-interaction=nonstopmode',
"    \ ],
"    \}
let maplocalleader = ","
let g:vimtex_enabled = 1
let g:vimtex_fold_enabled = 1
let g:vimtex_view_method = 'skim'
"let g:vimtex_quickfix_method = 'pplatex'
let g:vimtex_quickfix_latexlog = {'underfull' : 0}
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_format_enabled = 1
" Add custom mapping through vimtex#imap#add_map
call vimtex#imaps#add_map({
  \ 'lhs' : '~',
  \ 'rhs' : '\tilde',
  \ 'wrapper' : 'vimtex#imaps#wrap_math'
  \})
call vimtex#imaps#add_map({
  \ 'lhs' : '^',
  \ 'rhs' : '\hat',
  \ 'wrapper' : 'vimtex#imaps#wrap_math'
  \})

""==================== neosnippet ====================
"" Plugin key-mappings.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
"
"" SuperTab like snippets' behavior.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
""imap <expr><TAB>
"" \ pumvisible() ? "\<C-n>" :
"" \ neosnippet#expandable_or_jumpable() ?
"" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
""smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
"" For conceal markers.
"if has('conceal')
"  set conceallevel=2 concealcursor=niv
"endif
"
"" Enable snipMate compatibility feature.
"" let g:neosnippet#enable_snipmate_compatibility = 1
"
"" Expand the completed snippet trigger by <CR>.
""imap <expr><CR>
""\ (pumvisible() && neosnippet#expandable()) ?
""\ "\<Plug>(neosnippet_expand)" : "\<CR>"


"==================== UltiSnips ====================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"==================== FastFold ====================
let g:fastfold_savehook = 0
let g:fastfold_fdmhook = 0
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
