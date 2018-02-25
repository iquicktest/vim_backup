set autoread
set hls
set noswapfile
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
:let mapleader = " "

" ###############  PLUGGED MANAGEMENT ###################
call plug#begin('~/.vim/plugged')
"let g:ycm_path_to_python_interpreter = '/usr/local/bin/python2'
"let g:ycm_python_binary_path = '/usr/local/bin/python2'
"
"" Highlight the current line
set cursorline
" Set cursorline colors
highlight CursorLine ctermbg=235
" Set color of number column on cursorline
highlight CursorLineNR ctermbg=235 ctermfg=white

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-rhubarb'
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
"Plug 'davidhalter/jedi-vim'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'benmills/vimux'
Plug 'mfukar/robotframework-vim'

call plug#end()

" ################ FZF #################
set rtp+=/usr/local/opt/fzf
let g:fzf_files_options =
   \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" ############### Vim Tmux ############
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>

" ############### Vim AG ##############
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_working_path_mode="r"
map F <Plug>CtrlSFPrompt
map f <Plug>CtrlSFPrompt

" ############### Vim Theme ############
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
"colorscheme dracula
set termguicolors
set relativenumber
set number
set clipboard=unnamed

let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
map gn :bn<cr>
map gp :bp<cr>

"autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool

" ############### ALE PLUG ################
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
map <F2> :NERDTreeToggle<CR>


"############### YCM Setting ##################
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"nnoremap gd :YcmCompleter GoToDeclaration<CR>
nnoremap gd :YcmCompleter GoTo<CR>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <Leader>gd :YcmCompleter GoToDefinition<CR>
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_max_num_identifier_candidates = 10
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:SuperTabContextDefaultCompletionType = "<c-n>"



" Tmux settings
"let g:tmux_navigator_no_mappings = 1
"nnoremap <silent> <ctrl-h> :TmuxNavigateLeft<cr>
"nnoremap <silent> <ctrl-j> :TmuxNavigateDown<cr>
"nnoremap <silent> <ctrl-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <ctrl-l> :TmuxNavigateRight<cr>
"
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

"##############JAVA ECLIM######################
let g:EclimCompletionMethod = 'omnifunc'
autocmd FileType java nnoremap <silent> gi :JavaImportOrganize<cr>
autocmd FileType java nnoremap <silent> gd :JavaSearchContext<cr>
autocmd FileType java nnoremap <silent> gf :JavaFormat<cr>
autocmd FileType java nnoremap <silent> gs :JavaCorrect<cr>
autocmd FileType java nnoremap gn :JavaNew class<space>
autocmd FileType java set autoindent
autocmd FileType java set si
autocmd FileType java set shiftwidth=4
autocmd FileType groovy nnoremap <silent> gi :JavaImportOrganize<cr>
autocmd FileType groovy nnoremap <silent> gd :JavaSearchContext<cr>
autocmd FileType groovy nnoremap <silent> gf :JavaFormat<cr>
autocmd FileType groovy nnoremap <silent> gs :JavaCorrect<cr>
autocmd FileType groovy nnoremap gn :JavaNew class<space>
autocmd FileType groovy set autoindent
autocmd FileType groovy set si
autocmd FileType groovy set shiftwidth=4
let g:EclimJavaSearchSingleResult = 'edit'
"let g:ycm_filetype_specific_completion_to_disable = {'java':1}

let g:EclimFileTypeValidate = 0
"let g:EclimDisable=1
"##############JAVA ECLIM######################
"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_auto_trigger_delay=0.4
