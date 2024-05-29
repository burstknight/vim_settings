" ===============================================================================
" 載入vim外掛
" ===============================================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 這兩個外掛用來修改vim狀態列的樣式
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" 這個外掛是一個檔案總管
Plugin 'preservim/nerdtree'

" 這個外掛可以顯示對齊參考線
Plugin 'Yggdroot/indentLine'

" 這個外掛可以在 nerdtree中顯示每個檔案的git狀態
Plugin 'Xuyuanp/nerdtree-git-plugin'

" 這個外掛可以在vim中顯示所有函數的標籤，在開發C和C++程式時很有幫助
Plugin 'majutsushi/tagbar'

" 這個外掛用來顯示Git的commit的歷史紀錄
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'

" 這個外掛可以搭配Git即時顯示檔案修改狀態
Plugin 'airblade/vim-gitgutter'

" 這個外掛提供了幾個樣板，只要使用這個外掛，就可以把這些樣板載進來
Plugin 'tibabit/vim-templates'

Plugin 'iamcco/markdown-preview.nvim'

" 這個外掛提供非同步模式下使用外部指令
Plugin 'skywind3000/asyncrun.vim'

" 針對使用多個括號時，會使用不同的顏色來呈現多層次
Plugin 'frazrepo/vim-rainbow'

" 可用來處理括號等符號的自動補齊
Plugin 'jiangmiao/auto-pairs'

" vim 顏色主題
Plugin 'tomasiser/vim-code-dark'

" doxygen註解補齊工具
Plugin 'vim-scripts/DoxygenToolkit.vim'

" 只需給予關鍵字就能夠尋找特定的檔案
Plugin 'ctrlpvim/ctrlp.vim'

" 可在當前編輯的檔案中使用關鍵字搜尋函數
Plugin 'tacahiroy/ctrlp-funky'

" 使用vim-lsp這個外掛來做程式語言的自動補齊
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

" 使用 vim-vsnip 在自動補齊時插入程式碼
Plugin 'hrsh7th/vim-vsnip'
Plugin 'hrsh7th/vim-vsnip-integ'

call vundle#end()
filetype plugin indent on

" ===============================================================================
" vim 基本設定
" ===============================================================================
set nu 				" 顯示行數
set tabstop=4		" 設定tab鍵產生4格空白字元的寬度
set shiftwidth=4	" 設定自動縮排的對齊寬度為4格
set mouse=a			" 啟用用滑鼠選取文字
set ai				" 自動對齊縮排
set ruler			" 顯示游標的位置與目前開啟的文件位置
syntax on			" 啟動語法highlight，可以讓每種程式語言的關鍵字用特殊顏色凸顯出來
set encoding=utf-8	" 設定儲存的編碼為utf-8
autocmd FileType make setlocal noexpandtab	" 當編寫Makefile時，取消expandtab設定(Makefile需區分tab與空白鍵)
set cindent 		" 使用C/C++語言自動縮排方式
set smartindent		" 智能縮排
set completeopt=longest,menu	" 智能補全
set backspace=2					" 設定在插入模式下可以使用Backspace鍵刪除文字
colorscheme codedark
set linebreak 		" 設定拆行時英文詞彙會以完整的方式顯示在下一行
set showbreak=>> 	" 設定拆行的接續符號
set cursorline 		" 設定凸顯出游標所在的行
set cursorcolumn 	" 設定凸顯游標在某一行中的位置

" 設定vim可以在使用tmux時顯示全彩
if exists('+termguicolors')
	set termguicolors
endif

" ===============================================================================
" 設定NERDTree
" ===============================================================================
let NERDTreeShowHidden=1	" 在NERDTree顯示隱藏檔
let NERDTreeMouseMode=3 " 允許使用滑鼠點擊nerdtree中的檔案和資料夾

" ===============================================================================
" 設定vim-gitgutter
" ===============================================================================
set updatetime=100	" 設定vim-gitgutter每隔100ms檢查一次檔案的修改狀態
highlight GitGutterAdd 		ctermfg=blue 	" 設定vim-gitgutter在新增部份使用藍色來表示
highlight GitGutterChange 	ctermfg=green 	" 設定vim-gitgutter在修改部份使用綠色來表示
highlight GitGutterDelete	ctermfg=red 	" 設定vim-gitgutter在刪除部份使用紅色來表示

" ===============================================================================
" 設定vim-templates
" ===============================================================================
let g:tmpl_search_paths = ['~/.vim/templates']

" ===============================================================================
" 設定vim-templates
" ===============================================================================
let g:mkdp_port = '7777' 			" 設定Port
let g:mkdp_auto_start = 0			
let g:mkdp_refresh_slow = 1
let g:mkdp_open_ip = '127.0.0.1'

" ===============================================================================
" 設定asyncrun
" ===============================================================================
let g:asyncrun_open = 10	" 自動開啟 qickfix window，高度設定為10
let g:async_bell = 1		" 當外部指令執行完畢時會發出聲音

" ===============================================================================
" 設定vim-rainbow
" ===============================================================================
let g:rainbow_active = 1
let g:rainbow_ctermfgs = [226, 10, 172 , 50, 129]

" ===============================================================================
" 設定CtrlP
" ===============================================================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_catch_dir = $HOME . '/.cache/ctrlp'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.7z,*.rar,*/.git/*,*.o,*.so.*,*.pyd,*.pyc,*/bin/*,*/build/*,*.bmp,*.png,*.jpg,*.jpeg
let g:ctrlp_custom_ignore = {
			\ 'dir': '\v[/\]\.(git|hg|svn)$',
			\ 'file': '\v\.(exe|so|dll|o)$',
			\}

" ===============================================================================
" 設定 vim-lsp
" ===============================================================================

" Use clangd for c/c++
if executable('clangd')
	au User lsp_setup call lsp#register_server({
			\ 'name': 'clangd',
			\ 'cmd': {server_info->['clangd', '-background-index']},
			\ 'whitelist': ['c', 'cpp', 'h', 'hpp']
		\})
endif

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	if exists('+tagfunc') | setlocal tagfunc=lsp#func | endif
	nmap <buffer> gd <plug>(lsp-definition)
	nmap <buffer> gs <plug>(lsp-document-symbol-search)
	nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
	nmap <buffer> gr <plug>(lsp-referecne)
	nmap <buffer> gi <plug>(lsp-implementaion)
	nmap <buffer> gt <plug>(lsp-type-definition)
	nmap <buffer> <leader>rn <plug>(lsp-rename)
	nmap <buffer> [g <plug>(lsp-previous-diagnostic)
	nmap <buffer> ]g <plug>(lsp-next-diagnostic)
	nmap <buffer> K <plug>(lsp-hover)
	nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
	nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
endfunction

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction

" 可使用TAB鍵在候選選單中挑選下一個選項
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ asyncomplete#force_refresh()
" 可使用Shift + TAB 鍵在候選選單中選取上一個選項
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" 可使用 Enter 鍵使用候選選單中當前的選項來補齊
inoremap <expr><cr> pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" ===============================================================================
" 設定快捷鍵
" ===============================================================================

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F7> :GV<CR>
nmap <F8> :Dox<CR>
nnoremap <Leader>ff :CtrlPFunky<CR>
nnoremap <F10> :call asyncrun#quickfix_toggle(10)<CR>
nmap <F5> :AsyncRun make clean; make debug=1<CR>
nmap <C-F5> :AsyncRun make clean;make <CR>
nnoremap <Leader>ti :TemplateAutoInit<CR>
nnoremap <Leader>mp :MarkdownPreview<CR>

