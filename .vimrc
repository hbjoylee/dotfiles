""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Be IMproved
set nocompatible

" Set backspace
set backspace=eol,start,indent

" Lines folding
set foldenable
set foldmethod=syntax
"set foldmethod=indent

" Enable filetypes
filetype plugin indent on

" Set fileencodings
set fileencodings=utf-8,gbk,ucs-bom,big5

" Set complete options
set completeopt=longest,menu

" Set non-linewise display
set display=lastline

" Auto change current directory
set autochdir

" Use absolute paths in sessions
set sessionoptions-=curdir

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable backup
set backup

" Set backup directory
set backupdir=~/.vim/backup

" Set swap file directory
set directory=~/.vim/swap,/tmp

" Keep more backups for one file
autocmd BufWritePre * let &backupext = strftime(".%m-%d-%H-%M")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set colorscheme
colorscheme desert

" Enable syntax highlight
syntax enable
syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show ruler
set ruler

" Dynamic title
set title

" Turn on Wild menu
set wildmenu

" Display line number
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable magic matching
set magic

" Show matching bracets
set showmatch

" matchtime 1.5s
set matchtime=15

" Highlight search things
set hlsearch

" Ignore case when searching
set smartcase
set ignorecase

" Incremental match when searching
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Auto indent
set autoindent

" Smart indet
set smartindent

" Use hard tabs
set tabstop=8
set shiftwidth=8
set expandtab
set cindent shiftwidth=8

" Break long lines
set textwidth=80

" Set auto-formating
set formatoptions+=mM

" Config C-indenting
set cinoptions=:0,l1,t0,g0

" set textwidth for mail
autocmd FileType mail set textwidth=72

" Use soft tabs for python
autocmd FileType python set et sta ts=4 sw=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use my own cscope mappings
let autocscope_menus=0

" Auto change the root directory
let NERDTreeChDirMode=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Auto finding
set tags=tags;~

" Sort by name
let Tlist_Sort_Type="name"

" Use right window
let Tlist_Use_Right_Window=1

" Enable auto update
let Tlist_Auto_Update=1

" Set compart format
let Tlist_Compart_Format=1

" Set exit by window
let Tlist_Exit_OnlyWindow=1

" Disable fold column
let Tlist_Enable_Fold_Column=0

" Auto open
let Tlist_Auto_Open=1

" Only one file's list
let Tlist_Show_One_File = 1  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use both cscope and ctag
set cscopetag

" Show msg when cscope db added
set cscopeverbose

" Use tags for definition search first
set cscopetagorder=1

" Use quickfix window to show cscope results
set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tab navigation
nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap to :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap gf <C-W>gf

" Move among windows
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k

" Cscope mappings
nnoremap <C-w>\ :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

" Set Up and Down non-linewise
noremap <Up> gk
noremap <Down> gj

" Toggle Tlist
"nnoremap <silent> <F2> :TlistToggle<CR>:TlistUpdate<CR>

" Grep search tools
"nnoremap <F3> :Rgrep<CR>

" Paste toggle
"set pastetoggle=<F4>

" Save & Make 
"nnoremap <F5> :w<CR>:make!<CR>
"nnoremap <F6> :w<CR>:make! %< CC=gcc CFLAGS="-Wall -g -O2"<CR>:!./%<<CR>

" Quickfix window
"nnoremap <silent> <F7> :botright copen<CR>
"nnoremap <silent> <F8> :cclose<CR>

" NERDTreeToggle
"nnoremap <silent> <F9> :NERDTreeToggle<CR>

" Toggle display line number
"nnoremap <silent> <F10> :set number!<CR>

" Use <space> to toggle fold
"nnoremap <silent> <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" Use xsel to access the X clipboard
if $DISPLAY != '' && executable('xsel')
	nnoremap <silent> "*y :'[,']w !xsel -i -p -l /dev/null<CR>
	nnoremap <silent> "*p :r!xsel -p<CR>
	nnoremap <silent> "+y :'[,']w !xsel -i -b -l /dev/null<CR>
	nnoremap <silent> "+p :r!xsel -b<CR>
endif

" SrcExpl
" The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
"let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command ":buffers!" 
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_", 
        \ "Source_Explorer" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

"set linebreak
set linebreak

"set virtualedit,useful for table
set virtualedit=all

"set nowrapscan
set nowrapscan
