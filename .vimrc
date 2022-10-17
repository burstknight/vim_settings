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

" 這個外掛可以用在程式碼的自動補齊，以及對程式碼分析語意並且提供修改建議
Plugin 'neoclide/coc.nvim'

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
Plugin 'kien/ctrlp.vim'

" 可在當前編輯的檔案中使用關鍵字搜尋函數
Plugin 'tacahiroy/ctrlp-funky'


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

" ===============================================================================
" 設定NERDTree
" ===============================================================================
let NERDTreeShowHidden=1	" 在NERDTree顯示隱藏檔
let NERDTreeMouseMode=3 " 允許使用滑鼠點擊nerdtree中的檔案和資料夾

" ===============================================================================
" 設定coc.nvim
" ===============================================================================

let g:coc_global_extensions = [
			\'coc-clangd', 
			\'coc-cmake', 
			\'coc-pyright', 
			\'coc-sh', 
			\'coc-json',
			\'coc-markdownlint']

" 讓coc.nvim在顯示函式或類別的說明文件時，若內容較多，可以使用 Ctrl + f 和 Ctrl + b 來捲動
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

nnoremap <silent> <F9> :call ShowDocumentation()<CR>
func! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunc

" 可以使用enter鍵來自動挑選第一個候選關鍵字來補齊
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 可以使用TAB鍵從候選關鍵字中選擇想使用哪一個來補全
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]/(git|hg|svn)$',
			\ 'file': '\v\.(exe|so|dll)$',
			\}

" ===============================================================================
" 設定快捷鍵
" ===============================================================================
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F7> :GV<CR>
nmap <F8> :Dox<CR>
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <F10> :call asyncrun#quickfix_toggle(10)<CR>
nmap <F5> :AsyncRun make clean; make debug=1<CR>
nmap <C-F5> :AsyncRun make clean;make <CR>
