"*****************************************************************************
" Mappings
"*****************************************************************************
" Windows
" Resize split window
nnoremap <silent> + :exe "vertical resize +5"<CR>
nnoremap <silent> _ :exe "vertical resize -5"<CR>
nnoremap <silent> = :exe "resize +5"<CR>
nnoremap <silent> - :exe "resize -5"<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <Leader>ev :vsp $MYVIMRC<CR>

" Folding
nmap <Leader>fc :foldclose<CR> 
nmap <Leader>fo :foldopen<CR>
nmap <Leader>fa :set foldlevel=99<CR>
nmap <Leader>fl :set foldlevel=0<CR>

" Split
noremap <Leader>sh :<C-u>split<CR>
noremap <Leader>sv :<C-u>vsplit<CR>

" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Git commit --verbose<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" fzf.vim
nnoremap <Leader>sc :RG<Cr>

nmap <C-e> :e#<CR>
nnoremap <silent> <Leader>sf :FZF -m<CR>

" " " snippets
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" let g:UltiSnipsEditSplit="vertical"

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif


nnoremap <silent> <Leader>sb :Buffers<CR>

" Buffer nav
noremap <Leader>q :bp<CR>
noremap <Leader>w :bn<CR>

" Close buffer
noremap <Leader>e :bd<CR>

" Clean search (highlight)
nnoremap <silent> <ESC><ESC> :noh<cr>

" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Vimspector configurations
nnoremap <F1> :call vimspector#Launch()<CR>
nnoremap <Leader>dl :call vimspector#Launch()<CR>
nnoremap <F5> :call vimspector#Continue()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>
nnoremap <F2> :call vimspector#Reset()<CR>
nnoremap <Leader>dq :call vimspector#Reset()<CR>
nnoremap <F3> :call vimspector#Stop()<CR>
nnoremap <Leader>ds :call vimspector#Stop()<CR>
nnoremap <F4> :call vimspector#Restart()<CR>
nnoremap <Leader>dr :call vimspector#Restart()<CR>
nnoremap <F6> :call vimspector#Pause()<CR>
nnoremap <F9> :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dp :call vimspector#ToggleBreakpoint()<CR>
nnoremap <F10> :call vimspector#StepOver()<CR>
nnoremap <Leader>dn :call vimspector#StepOver()<CR>
nnoremap <F11> :call vimspector#StepInto()<CR>
nnoremap <Leader>di :call vimspector#StepInto()<CR>
nnoremap <F12> :call vimspector#StepOut()<CR>
nnoremap <Leader>do :call vimspector#StepOut()<CR>

"==============FloatTerm configurations========================
" FloatTerm
nnoremap   <silent> <Leader>tn    :FloatermNew<CR>
tnoremap   <silent> <Leader>tn    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent> <Leader>tq    :FloatermKill<CR>
tnoremap   <silent> <Leader>tq    <C-\><C-n>:FloatermKill<CR>
nnoremap   <silent> <Leader>tt    :FloatermToggle<CR>
tnoremap   <silent> <Leader>tt    <C-\><C-n>:FloatermToggle<CR>


"==============NERDTree configurations========================
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>

