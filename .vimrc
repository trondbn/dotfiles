set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Konfekt/FastFold'

call vundle#end()            " required


" map ctrl-space to omnicompletion
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoread

set wildmenu
set wildmode=longest:list,full

filetype plugin indent on    " required
let g:tex_flavor = 'latex'


"==================== vimtex ====================
let g:vimtex_compiler_method = "latexmk"
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


"==================== UltiSnips ====================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
leg g:UltiSnipsListSnippets="<c-tab>"
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
